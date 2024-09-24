const Data = @import("Data.zig").Data;
const thenAskUserForOption = @import("thenAskUserForOption.zig").thenAskUserForOption;
const whenPlusPressed = @import("whenPlusPressed.zig").whenPlusPressed;
const whenUnknownInput = @import("whenUnknownInput.zig").whenUnknownInput;
const whenQPressed = @import("whenQPressed.zig").whenQPressed;

pub fn whenAppStarts(data: *Data) void {
    thenAskUserForOption(data, whenPlusPressed, whenQPressed, whenUnknownInput);
}
