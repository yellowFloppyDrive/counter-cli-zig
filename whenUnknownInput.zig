const Data = @import("Data.zig").Data;
const runPrint = @import("runPrint.zig").runPrint;

pub fn whenUnknownInput(_: *Data) void {
    runPrint("Uknown command\n", .{});
}
