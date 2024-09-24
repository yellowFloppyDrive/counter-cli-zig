const std = @import("std");
const runPrint = @import("runPrint.zig").runPrint;

pub fn runTakeUserInput() (?[]const u8) {
    const std_in = std.io.getStdIn();
    var bufferedReader = std.io.bufferedReader(std_in.reader());
    var reader = bufferedReader.reader();

    var buffer: [32]u8 = undefined;
    const input = reader.readUntilDelimiterOrEof(&buffer, '\n') catch {
        runPrint("Input too long. Max 32 characters\n", .{});
        return "";
    };

    return input;
}
