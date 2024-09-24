const std = @import("std");
const Data = @import("Data.zig").Data;
const whenAppStarts = @import("whenAppStarts.zig").whenAppStarts;

pub fn main() void {
    var data: Data = Data{
        .count = 0,
    };

    whenAppStarts(&data);
}
