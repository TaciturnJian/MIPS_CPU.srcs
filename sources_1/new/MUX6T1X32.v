`timescale 1ns / 1ps

module MUX6T1X32(d_and,d_or,d_xor,d_lui,d_sh,d_as,ALUControl,d);
    input [31:0]d_and,d_or,d_xor,d_lui,d_sh,d_as;
    input [3:0]ALUControl;
    output [31:0]d;
    function [31:0]select;
        input [31:0]d_and,d_or,d_xor,d_lui,d_sh,d_as;
        input [3:0]ALUControl;
            case(ALUControl)
                4'b0000:select=d_as;
                4'b0001:select=d_as;

                4'b0010:select=d_and;
                4'b0011:select=d_or;
                4'b0100:select=d_xor;
                4'b0110:select=d_lui;

                4'b0101:select=d_sh;
                4'b0111:select=d_sh;
                4'b1111:select=d_sh;
                4'b1101:select=d_sh;
            endcase
    endfunction
    assign d=select(d_and, d_or, d_xor, d_lui, d_sh, d_as, ALUControl);
endmodule
