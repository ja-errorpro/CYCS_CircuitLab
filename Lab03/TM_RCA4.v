`timescale 1ns/1ns

module TM_RCA4;

reg [3:0] a, b;
wire [3:0] s;
wire cout;

RCA4 U_RCA (.a(a), .b(b), .s(s), .cout(cout));

initial begin

    a = 4'd0;
    b = 4'd0;
    // #200
    // a = 4'd10; // 1010
    // b = 4'd5; // 0101


    #200
    a = 4'd1; // 0001
    b = 4'd3; // 0011

    #200
    a = 4'd2; // 0010
    b = 4'd5; // 0101

    #200
    a = 4'd5; // 0101
    b = 4'd3; // 0111

    #200
    a = 4'd6; // 0110
    b = 4'd7; // 0111

    #200
    a = 4'd7;
    b = 4'd1;

    #200
    a = 4'd9;
    b = 4'd11;

    #200
    a = 4'd8;
    b = 4'd13;

    #200
    a = 4'd10;
    b = 4'd9;

    #200
    a = 4'd11;
    b = 4'd13;

    #200
    a = 4'd15;
    b = 4'd15;

    #200
    $stop; 
end

endmodule