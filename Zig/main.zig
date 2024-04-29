const std = @import("std");
const zap = @import("zap");

fn on_request(r: zap.Request) void {
    if (r.path) |the_path| {
        std.debug.print("PATH: {s}\n", .{the_path});
    }

    if (r.query) |the_query| {
        std.debug.print("QUERY: {s}\n", .{the_query});
    }
    r.sendBody("<h1>Hello, World!</h1>") catch return;
}

pub fn main() !void {
    var listener = zap.HttpListener.init(.{
        .port = 443,
        .on_request = on_request,
        .log = true,
    });
    try listener.listen();

    // start worker threads
    zap.start(.{
        .threads = 2,
        .workers = 2,
    });
}
