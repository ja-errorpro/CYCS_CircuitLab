`timescale 1ns/1ns

module RCA3(a, b, cout, s);

input [2:0] a, b;
output [2:0] s;
output cout;

wire [3:0] at, bt, st;
assign at = {1'b0, a};
assign bt = {1'b0, b};
assign st = at + bt;
assign s = st[2:0];
assign cout = st[3];

endmodule

