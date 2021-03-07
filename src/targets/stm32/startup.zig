const root = @import("root");

extern var _data_rom_start: [*]u8;
extern var _data_ram_stop: [*]u8;
extern var _data_ram_start: [*]u8;

export fn resetHandler() callconv(.C) void {
    const data_size = @ptrToInt(_data_ram_stop) - @ptrToInt(_data_ram_stop);
    for (_data_rom_start[0..data_size]) |b, i| _data_ram_start[i] = b;

    root.main();
}

export fn breakpointHandler() callconv(.C) void {
    @breakpoint();
}

export fn dummyHandler() callconv(.C) void {}

// TODO: move that to specific SoC file
const INTERRUPTS_COUNT = 15;

export const isr_vector linksection(".isr_vector") = comptime isr_init: {
    var result: [INTERRUPTS_COUNT]?fn () callconv(.C) void = [_]?fn () callconv(.C) void{
        resetHandler,
        breakpointHandler, // nmi
        breakpointHandler, // hardfault
        breakpointHandler, // memmanager
        breakpointHandler, // nus fault
        breakpointHandler, // usage fault
        null,
        null,
        null,
        null,
        dummyHandler, // SVC
        dummyHandler, // DebugMon
        null,
        breakpointHandler, // PendSV
        breakpointHandler,
    };

    if (@hasDecl(root, "initInterrupts")) {
        root.initInterrupts(&result);
    }

    break :isr_init result;
};
