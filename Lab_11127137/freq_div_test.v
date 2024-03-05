`timescale 1ns / 100ps

module        freq_div_test;


reg             rst;
reg             clk;
wire            clk_div;
wire            clk_div6;

localparam  ONE_NS  = 1000;

//parameter   td=4*ONE_NS;   // setting 250 MHz clock
parameter   td=10*ONE_NS;   // setting 100 MHz clock
parameter   td_h=(td/2);

always #td_h         clk=~clk;

initial begin

rst=1;
clk=1;

#(4*td)
#(2)  rst=0;
#(2*td) rst=1;

#(td*50) $stop;

end

// always@(posedge clk) 
//   $display("%d \n", clk_div6); 


freq_div     U_freq_div (

.rst                 (rst),
.clk                 (clk),

.clk_div             (clk_div),
.clk_div6            (clk_div6)

);


endmodule



