const Data = @import("Data.zig").Data;
const runPrint = @import("runPrint.zig").runPrint;

pub fn thenRenderCount(data: *Data) void {
    runPrint("Count {d}\n", .{data.count});
}
