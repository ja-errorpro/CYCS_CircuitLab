`timescale 1ns/1ns

module Counter( dout, clk, rst, cnt_out);
    input [3:0] dout;
    input wire clk, rst;
    output reg [3:0] cnt_out;
    
always @(posedge clk)
    begin
        if(rst == 1'b0)
            cnt_out <= 4'b0000;
        else
            cnt_out <= dout + 1;
    end
endmodule


