`timescale 1ns/1ns

module count_hold_add(a, b, clk, sel, rst, dout);

input [2:0] a, b;
input clk,  rst;
input [1:0] sel;
output wire [3:0] dout;

wire [3:0] cnt_out;
wire [2:0] adder_sum;
wire adder_cout;
wire [3:0] adder_out;

Counter U_cnt(.dout(dout), .clk(clk), .rst(rst), .cnt_out(cnt_out) );
RCA3 U_adder(.a(a), .b(b), .s(adder_sum), .cout(adder_cout) );

assign adder_out = {adder_cout, adder_sum};

assign dout = (sel == 2'b00) ? adder_out
: (sel == 2'b10) ? cnt_out
: (sel == 2'b01) ? dout 
: 4'bxxxx;

endmodule