`timescale 1ns/1ns

module Counter_and_sel( dout, clk, rst, sel, a, b );
    output reg[3:0] dout;
    input wire clk, rst, sel;
    input wire[3:0] a, b;
    
always @(posedge clk)
    begin
        if(rst)
            dout <= 4'b0000;
        else
            if(sel)
                dout <= dout + 1;
            else
                dout <= a & b;
    end
endmodule


