`timescale 1ns / 100ps

module  freq_div  (

input        rst,
input        clk,

output       clk_div,
output       clk_div6

);

reg            q1, q0;
wire           q1_b, q0_b, d1;
//wire [1:0]     S;
wire           q0_dly, q1_dly;

reg            q2;
reg            clk_div_q;

wire           clk_b;

// DFF-1
always@(negedge rst or posedge clk)
   if (!rst)
      q1<=0;
   else 
      q1<=d1;
      
// DFF-0
always@(negedge rst or posedge clk)
   if (!rst)
      q0<=0;
   else 
      q0<=q1;    
   
assign q1_b=~q1;
assign q0_b=~q0;

assign d1=q1_b&q0_b;

//assign S={q1,q0};

//assign clk_div=(S==2'b00)? 1'b0 : (S==2'b01)? clk : (S==2'b10)? 1'b1 : 1'b1;

//assign #(500) q0_dly=q0;
assign q0_dly=q0;
assign q1_dly=q1;

assign clk_div=(q0_dly&1)|q1_dly;


assign #(500) clk_b=~clk;
always@(posedge clk_b) clk_div_q<=clk_div;


// DFF-2
always@(negedge rst or posedge clk_div_q)
   if (!rst)
      q2<=0;
   else 
      q2<=~q2;

assign clk_div6=q2;


endmodule


