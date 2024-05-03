`timescale 1ns/1ns

module TM;

reg sel, clk, rst;
reg [3:0] a, b;
wire [3:0] dout;

parameter t = 200;
parameter th = 100;

Counter_and_sel U_counter_and_sel( dout, clk, rst, sel, a, b);

always #th clk = ~clk;

initial begin
    clk = 0;
    sel = 1;
    rst = 1;
    a = 4'b0000;
    b = 4'b0000;

    #t rst = 0;
    
    #(13*t) sel = 0;
    a = 4'b0101;
    b = 4'b1001;
    #t
    a = 4'b1011;
    b = 4'b0010;
    #t $stop;
end

endmodule