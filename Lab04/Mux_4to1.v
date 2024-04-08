`timescale 1ns/1ns

module Mux_4to1 (out, in0, in1, in2, in3, sel);
    output out;
    input in0, in1, in2, in3;
    input [1:0] sel;
    
    assign out = (sel == 2'b00) ? in0 : 
                 (sel == 2'b01) ? in1 : 
                 (sel == 2'b10) ? in2 : in3;

endmodule