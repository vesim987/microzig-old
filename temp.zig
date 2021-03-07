const Mode = enum {
    Input, Output
};

pub fn GPIO(comptime _GPIO: type, comptime pin_number: u32) type {
    return struct {
        const GPIO_ = _GPIO;
        const PinNumber = pin_number;

        pub fn init(mode: Mode) void {
            mmio.RCC.AHB1ENR.set(.{ .GPIOCEN = true });
            comptime const t = gen_type("OT", pin_number, true);

            GPIO_.MODER.set(gen_type("MODER", pin_number, 1));
            GPIO_.OSPEEDR.set(gen_type("OSPEEDR", pin_number, 3));
            GPIO_.OTYPER.set(t);
            GPIO_.PUPDR.set(gen_type("PUPDR", pin_number, 3));
            GPIO_.AFRH.set(gen_type("AFRH", pin_number, 0));
        }

        pub fn toggle() void {
            GPIO_.ODR.toggle(.{.ODR13});
        }

        pub fn get() bool {
            return GPIO_.ODR.get().ODR13;
        }

        pub fn set(val: anytype) void {
            GPIO_.ODR.set(gen_type(Type, "ODR", pin_number, val));
        }
    };
}

const PIN_C13 = GPIO(mmio.GPIOC, 13);

fn gen_type_helper(comptime Type: type, comptime name: anytype, comptime index: u32, value: anytype) type {
    comptime var temp_info = @typeInfo(@TypeOf(value));
    const struc = switch (temp_info) {
        .Struct => |s| s,
        else => unreachable,
    };
    const temp = std.builtin.TypeInfo{
        .Struct = .{
            .layout = struc.layout,
            .fields = &[_]std.builtin.TypeInfo.StructField{
                .{
                    .name = std.fmt.comptimePrint(name ++ "{d}", .{index}),
                    .field_type = struc.fields[0].field_type,
                    .default_value = struc.fields[0].default_value,
                    .is_comptime = struc.fields[0].is_comptime,
                    .alignment = struc.fields[0].alignment,
                },
            },
            .decls = &[0]std.builtin.TypeInfo.Declaration{},
            .is_tuple = struc.is_tuple,
        },
    };
    return @Type(temp);
}

fn get_temp_type(value: anytype) type {
    return .{
        .foo = value,
    };
}

pub fn gen_type(comptime name: anytype, comptime index: u32, value: anytype) gen_type_helper(@TypeOf(value), name, index, value) {
    const temp = .{ .foo = value };
    comptime const Type = gen_type_helper(@TypeOf(value), name, index, value);
    var temp: Type = undefined;
    switch (@typeInfo(@TypeOf(value))) {
        .ComptimeInt => {},
        else => {}, //@field(temp, std.fmt.comptimePrint(name ++ "{d}", .{index})) = value,
    }
    return temp;
}
