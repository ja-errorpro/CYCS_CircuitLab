`timescale 1ns/1ns

module RCA4(a, b, cout, s);

input [3:0] a, b;
output [3:0] s;
output cout;

wire [3:0] c;

HA tha0(.a(a[0]), .b(b[0]), .sum(s[0]), .cout(c[0]));
FA tfa1(.a(a[1]), .b(b[1]), .c(c[0]), .sum(s[1]), .cout(c[1]));

FA tfa2(.a(a[2]), .b(b[2]), .c(c[1]), .sum(s[2]), .cout(c[2]));

FA tfa3(.a(a[3]), .b(b[3]), .c(c[2]), .sum(s[3]), .cout(c[3]));

assign cout = c[3];

endmodule

