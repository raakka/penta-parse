const std = @import("std");
const mem = std.mem;
const expect = @import("std").testing.expect;
const print = std.debug.print;

// Add the string(s) you want to try to do ops on here
const test_string1 = "abc";
const test_string2 = "tokenize this junk";
const stupid_symbols = "/ * < >";

//const sym = enum {

///////////////////////////////////////////////////////////////////////////////////////////////////
// Testing stuff, lots of tests lol

// u8 array ops n stuff
test "add string" {
    var sum: usize = 0;
    for (test_string1) |charnum| {
        sum += charnum;
    }
    expect(sum == 'a' + 'b' + 'c');
}

// Testing the tokenizer!
test "bruh tokenizer" {
    var string_in_parts = std.mem.tokenize(test_string2, " ");
    while (string_in_parts.next()) |item| {
        expect(item.len > 3);
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Main junk

pub fn main() void {
    print_tokenized_stuff();
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Tokenizing one of the demo strings (test_string1)

pub fn print_tokenized_stuff() void {
    var string_in_parts = std.mem.tokenize(test_string2, " ");
    while (string_in_parts.next()) |item| {
        print("{}\n", .{item});
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Identifing ops n sym
