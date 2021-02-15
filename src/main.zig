const std = @import("std");
const micro = @import("micro.zig");
const mmio = micro.mmio;

export fn main() void {
    mmio.GPIOC.MODER.set(.{ .MODER13 = 1 });
    mmio.GPIOC.OSPEEDR.set(.{ .OSPEEDR13 = 3 });
    mmio.GPIOC.OTYPER.set(.{ .OT13 = true });
    mmio.GPIOC.PUPDR.set(.{ .PUPDR13 = 3 });
    mmio.GPIOC.AFRH.set(.{ .AFRH13 = 0 });

    while (true) {
        var i: u32 = 0;
        while (i < 3000000) {
            asm volatile ("nop");
            i += 1;
        }
        mmio.GPIOC.ODR.toggle(.{.ODR13});
    }
}
