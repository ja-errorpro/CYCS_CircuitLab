`timescale 1ns/1ns

module TM;

reg clk, rst;
wire [3:0] dout;

parameter t = 200;
parameter th = 100;

Counter U_cnt( .dout(dout), .clk(clk), .rst(rst) );

always #th clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #t rst = 0;
    // Delay 15t
    #(15*t)
    #t $finish;
end

endmodule