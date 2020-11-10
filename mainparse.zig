const std = @import("std");

const Token = struct {
    type: [_]u8, val: i64
};

const Interpreter = struct {
    text = [_]u8,
    char = u8,

    pub fn get_next_token() void {
        const stdout = std.io.getStdOut().writer();
        try stdout.print("do something later", .{});
    }
};
