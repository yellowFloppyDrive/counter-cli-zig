const Data = @import("Data.zig").Data;
const runExitProgram = @import("runExitProgram.zig").runExitProgram;

pub fn whenQPressed(_: *Data) void {
    runExitProgram();
}
