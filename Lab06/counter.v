`timescale 1ns/1ns

module Counter( dout, clk, rst );
    output reg[3:0] dout;
    input wire clk, rst;
    
always @(posedge clk)
    begin
        if(rst)
            dout <= 4'b0000;
        else
            dout <= dout + 1;
    end
endmodule


