const std = @import("std");
const micro = @import("micro.zig");
const mmio = micro.mmio;
const gpio = micro.gpio;

const pins = struct {
    const A13 = gpio.Pin(mmio.GPIOA, 13);
    const B13 = gpio.Pin(mmio.GPIOB, 13);
    const C13 = gpio.Pin(mmio.GPIOC, 13);
};

const leds = struct {
    const BLUE_LED = gpio.LED(pins.C13);
};

pub export fn main() void {
    leds.BLUE_LED.init(false);
    leds.BLUE_LED.GPIO_.set_mode(.Output);

    while (true) {
        delay(3000000);
        leds.BLUE_LED.toggle();
    }
}

pub fn delay(val: u32) void {
    var i: u32 = 0;
    while (i < val) {
        asm volatile ("nop");
        i += 1;
    }
}
