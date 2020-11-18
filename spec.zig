const std = @import("std");
const mem = std.mem;
const expect = @import("std").testing.expect;
const print = std.debug.print;

test "bruh test 1" {
    var thing1: u64 = 1;
    expect(thing1 == 1);
}
