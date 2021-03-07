const build_options = @import("build_options");

pub const mcu = @import(build_options.board_file[5..]).mcu;
pub const mmio = mcu.mmio;
pub const gpio = mcu.gpio;
