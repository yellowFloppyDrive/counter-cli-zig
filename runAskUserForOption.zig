const runPrint = @import("runPrint.zig").runPrint;

pub fn runAskUserForOption() void {
    runPrint("Pick an option: (+ - Increment, q - Quit): ", .{});
}
