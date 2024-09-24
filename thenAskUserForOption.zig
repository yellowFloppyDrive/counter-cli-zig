const Data = @import("Data.zig").Data;
const runAskUserForOption = @import("runAskUserForOption.zig").runAskUserForOption;
const runTakeUserInput = @import("runTakeUserInput.zig").runTakeUserInput;

pub fn thenAskUserForOption(data: *Data, comptime onPlus: fn (data: *Data) void, comptime onQ: fn (data: *Data) void, onUnknownInput: fn (data: *Data) void) void {
    var option: ?[]const u8 = undefined;

    while (true) {
        runAskUserForOption();
        option = runTakeUserInput();

        if (option) |o| {
            if (o.len > 0) {
                switch (o[0]) {
                    '+' => {
                        onPlus(data);
                    },
                    'q' => {
                        onQ(data);
                    },
                    else => {
                        onUnknownInput(data);
                    },
                }
            }
        }
    }
}
