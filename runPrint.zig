const std = @import("std");
const PRINT_FAIL = @import("PRINT_FAIL.zig").PRINT_FAIL;

pub fn runPrint(comptime message: []const u8, args: anytype) void {
    std.io.getStdOut().writer().print(message, args) catch {
        std.process.exit(PRINT_FAIL);
    };
}
