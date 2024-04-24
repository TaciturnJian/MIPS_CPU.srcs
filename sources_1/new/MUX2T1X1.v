`timescale 1ns / 1ps

module MUX2T1X1(
    input A0, 
    input A1, 
    input S, 
    output Y);
    wire A0_S, A1_S, S_n;
    not i0(S_n, S);
    nand i1(A0_S, A0, S_n);
    nand i2(A1_S, A1,S);
    nand i3(Y, A0_S, A1_S);
endmodule
