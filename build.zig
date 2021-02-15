const std = @import("std");
const Builder = @import("std").build.Builder;
const builtin = @import("builtin");

// TODO: improve this
fn find_board(name: []const u8) ?[]u8 {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var allocator = &gpa.allocator;

    var it = std.fs.walkPath(allocator, ".") catch @panic("failed to walkpath");
    while (it.next() catch @panic("failed to iterate")) |entry| {
        if (std.mem.count(u8, entry.path, "/boards/") == 0)
            continue;
        if (std.mem.count(u8, entry.path, name) == 0)
            continue;
        if (std.mem.count(u8, entry.path, "board.zig") == 0)
            continue;

        return std.mem.dupe(std.heap.page_allocator, u8, entry.path) catch @panic("failed to allocate");
    }
    return null;
}

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();

    const target = std.zig.CrossTarget{
        .cpu_arch = .thumb,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m3 },
        .os_tag = .freestanding,
        .abi = .none,
    };

    const runtime = b.addObject("runtime.so", "src/targets/stm32/startup.zig");
    runtime.setTarget(target);

    const exe = b.addExecutable("firmware.elf", "src/main.zig");
    exe.setTarget(target);

    exe.setBuildMode(std.builtin.Mode.ReleaseSmall);
    exe.setLinkerScriptPath("src/targets/stm32/stm32f411/stm32f411.ld");
    exe.addObject(runtime);

    const board = b.option([]const u8, "board", "board");
    if (board) |board_| {
        const file = find_board(board_);
        if (file) |f| {
            defer std.heap.page_allocator.free(f);
            exe.addBuildOption([]const u8, "board_file", f);
        } else {
            std.log.err("board \"{s}\" not found", .{board});
            @panic("board not found");
        }
    } else {
        //std.log.warn("please specify -Dboard= to select the board", .{});
    }

    b.default_step.dependOn(&exe.step);
    b.installArtifact(exe);
}
