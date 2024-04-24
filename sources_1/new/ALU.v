`timescale 1ns / 1ps

/// @brief 算数逻辑部件，需要实现加，减，按位与，按位或。
/// @param X 寄存器1的值
/// @param Y 寄存器2或立即数
/// @param ALUControl 控制信号，0为加，1为减，2为与，3为或，4为异或，5为左移16位
/// @param Result 结果
/// @param Zero 结果是否为0
module ALU(
    input [31: 0] ALUX,
    input [31: 0] ALUY,
    input [3: 0] ALUControl,
    output [31: 0] Result,
    output Zero);

    wire[31:0] result_as, result_and, result_or, result_xor, result_lui, result_sh;
    AddSubX32 as(ALUX, ALUY, ALUControl[0], result_as);
    assign result_and = ALUX & ALUY;
    assign result_or = ALUX | ALUY;
    assign result_xor = ALUX ^ ALUY;
    assign result_lui = { ALUY[15:0], 16'h0 };
    SHIFTX32 shift(ALUY, ALUX[10:6], ALUControl[3], ALUControl[1], result_sh);
    MUX6T1X32 select(result_and, result_or, result_xor, result_lui, result_sh, result_as, ALUControl[3:0], Result);

    assign Zero = Result == 31'b0;
endmodule
