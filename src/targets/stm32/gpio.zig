const std = @import("std");
const mmio = @import("../../micro.zig").mmio;

const Mode = enum(u2) {
    Input = 0b00,
    Output = 0b01,
    AlternateFunction = 0b10,
    Analog = 0b11,
};

pub fn Pin(comptime _GPIO: type, comptime pin_number: u32) type {
    return struct {
        const GPIO_ = _GPIO;
        const PinNumber = pin_number;

        pub fn init(mode: Mode) void {
            // TODO: refactor this part to be more generic
            mmio.RCC.AHB1ENR.set(switch (GPIO_) {
                mmio.GPIOA => .{ .GPIOAEN = true },
                mmio.GPIOB => .{ .GPIOBEN = true },
                mmio.GPIOC => .{ .GPIOCEN = true },
                mmio.GPIOD => .{ .GPIODEN = true },
                else => @compileError("Unknown GPIO controller " ++ @typeName(GPIO_)),
            });

            GPIO_.MODER.set(gen_anonymous_struct_with_field("MODER", pin_number, @enumToInt(mode)));
            GPIO_.OSPEEDR.set(gen_anonymous_struct_with_field("OSPEEDR", pin_number, 3));
            GPIO_.OTYPER.set(gen_anonymous_struct_with_field("OT", pin_number, true));
            GPIO_.PUPDR.set(gen_anonymous_struct_with_field("PUPDR", pin_number, 3));
            GPIO_.AFRH.set(gen_anonymous_struct_with_field("AFRH", pin_number, 0));
        }

        pub fn set_mode(mode: Mode) void {
            GPIO_.MODER.set(gen_anonymous_struct_with_field("MODER", pin_number, @enumToInt(mode)));
        }

        pub fn toggle() void {
            GPIO_.ODR.toggle(gen_anonymous_struct_with_field("ODR", pin_number, 1));
        }

        pub fn get() bool {
            return @field(GPIO_.ODR.get(), comptime std.fmt.comptimePrint("ODR{d}", .{pin_number}));
        }

        pub fn set(val: anytype) void {
            GPIO_.ODR.set(gen_anonymous_struct_with_field("ODR", pin_number, val));
        }
    };
}

pub fn LED(comptime _GPIO: type) type {
    return struct {
        pub const GPIO_ = _GPIO;
        pub fn init(init_state: bool) void {
            GPIO_.set(init_state);
            GPIO_.init(.Output);
        }

        pub fn state() bool {
            return GPIO_.get();
        }

        pub fn on() void {
            GPIO_.set(true);
        }

        pub fn off() void {
            GPIO_.set(true);
        }

        pub fn set(value: bool) void {
            GPIO_.set(value);
        }

        pub fn toggle() void {
            GPIO_.toggle();
        }
    };
}

fn gen_temp_type(comptime name: []const u8, index: comptime_int, comptime value: type) type {
    const templated_struct = packed struct {
        foo: value,
    };

    const templated_struct_info = @typeInfo(templated_struct).Struct;

    const temp = std.builtin.TypeInfo{
        .Struct = .{
            .layout = templated_struct_info.layout,
            .fields = &[_]std.builtin.TypeInfo.StructField{
                .{
                    .name = std.fmt.comptimePrint(name ++ "{d}", .{index}),
                    .field_type = templated_struct_info.fields[0].field_type,
                    .default_value = templated_struct_info.fields[0].default_value,
                    .is_comptime = templated_struct_info.fields[0].is_comptime,
                    .alignment = templated_struct_info.fields[0].alignment,
                },
            },
            .decls = &[0]std.builtin.TypeInfo.Declaration{},
            .is_tuple = templated_struct_info.is_tuple,
        },
    };

    return @Type(temp);
}

fn gen_anonymous_struct_with_field(comptime name: []const u8, index: comptime_int, value: anytype) gen_temp_type(name, index, @TypeOf(value)) {
    const Type = gen_temp_type(name, index, @TypeOf(value));

    var result: Type = undefined;
    @field(result, comptime std.fmt.comptimePrint(name ++ "{d}", .{index})) = value;
    return result;
}
