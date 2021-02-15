extern fn main() void;

fn _start() void {
    // TODO: some initializtion code
    main();
}

extern var _data_rom_start: [*]u8;
extern var _data_ram_stop: [*]u8;
extern var _data_ram_start: [*]u8;

export fn ResetHandler() callconv(.C) void {
    const data_size = @ptrToInt(_data_ram_stop) - @ptrToInt(_data_ram_stop);
    for (_data_rom_start[0..data_size]) |b, i| _data_ram_start[i] = b;

    _start();
}

export fn BusyDummyHandler() callconv(.C) void {
    while (true) {}
}

export fn SysTickHandler() callconv(.C) void {
    @breakpoint();
}

export fn DummyHandler() callconv(.C) void {}

export var isr_vector linksection(".isr_vector") = [_]?fn () callconv(.C) void{
    ResetHandler,
    BusyDummyHandler, // nmi
    BusyDummyHandler, // hardfault
    BusyDummyHandler, // memmanager
    BusyDummyHandler, // nus fault
    BusyDummyHandler, // usage fault
    null,
    null,
    null,
    null,
    DummyHandler, // SVC
    DummyHandler, // DebugMon
    null,
    DummyHandler, // PendSV
    SysTickHandler,
};
