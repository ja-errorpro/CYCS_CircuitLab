`timescale 1ns/1ns

module TM;

reg [2:0] a, b;
reg clk, rst;
wire [3:0] dout;
reg [1:0] sel;

parameter t = 200;
parameter th = 100;

count_hold_add U_m( .a(a), .b(b), .dout(dout), .clk(clk), .sel(sel), .rst(rst) );

always #th clk = ~clk;

initial begin

    rst = 1;
    clk = 0;
    sel = 2'b00;
    a = 3'b000;
    b = 3'b000;
    #t rst = 0;
    #t rst = 1;

    sel = 2'b10;

    // Counter
    #(8*t) sel = 2'b01;
    // Hold
    #(2*t) sel = 2'b00;
    // Adder
    a = 3'b011;
    b = 3'b100;

    #t

    a = 3'b001;
    b = 3'b101;

    #t $stop;

end

endmodule