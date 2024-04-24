`timescale 1ns / 1ps

/// @brief �����߼���������Ҫʵ�ּӣ�������λ�룬��λ��
/// @param X �Ĵ���1��ֵ
/// @param Y �Ĵ���2��������
/// @param ALUControl �����źţ�0Ϊ�ӣ�1Ϊ����2Ϊ�룬3Ϊ��4Ϊ���5Ϊ����16λ
/// @param Result ���
/// @param Zero ����Ƿ�Ϊ0
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
