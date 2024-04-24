`timescale 1ns / 1ps


module PCAdd4_TB();
    reg [31:0] PC;
    wire [31:0] PCResult;

    PCAdd4 u1 (PC, PCResult);

    initial begin
        PC = 32'h00000000;

        #10 PC = 32'h00000004;
        #10 PC = 32'h00000008;
        #10 PC = 32'h0000000C;
        #10 PC = 32'h00000010;
    end
endmodule

