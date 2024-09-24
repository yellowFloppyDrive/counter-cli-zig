const Data = @import("Data.zig").Data;
const runIncrementCount = @import("runIncrementCount.zig").runIncrementCount;
const thenRenderCount = @import("thenRenderCount.zig").thenRenderCount;

pub fn whenPlusPressed(data: *Data) void {
    data.count = runIncrementCount(data.count);

    thenRenderCount(data);
}
