const std = @import("std");
const mem = std.mem;
const expect = @import("std").testing.expect;
const print = std.debug.print;

// Add the string(s) you want to try to do ops on here
const test_string1 = "abc";
const test_string2 = "tokenize this junk";
const stupid_symbols = "/ * < >";
const math_lol = "1 + 1";

// okay this is playing with dumb stuff at this point
/// but what does this do wtf is this a macro or nahh???

///////////////////////////////////////////////////////////////////////////////////////////////////
// Type and Op enums..

//yay enums I love enums please more... -_-
const opperator = enum {
    plus, minus, div, mult, floor, mod
};

//more enums (smart string handling)
const string_type = enum {
    singleq, doubleq
};

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

/// This is the test we use to check if we can math or nah
test "bruh math" {
    var math_in_parts = std.mem.tokenize(math_lol, " ");
    while (math_in_parts.next()) |item| {
        //const type = switch (item) {
        //}
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Main junk

pub fn main() void {
    print_tokenized_stuff();
    ident();
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

pub fn ident() void {
    var string_in_parts2 = std.mem.tokenize(stupid_symbols, " ");
    while (string_in_parts2.next()) |token| {
        print("{}\n", .{token});
    }
}
