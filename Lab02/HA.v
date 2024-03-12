`timescale 1ns/1ns

module HA(a, b, sum, cout);

input a, b;
output sum, cout;

xor(sum, a, b);

and(cout, a, b);

endmodule