`timescale 1ns / 1ps

/// @brief 26λ�� PC+4 ��ǰ��λ��ϣ�������2λ��32λ
/// @param X 26λ����
/// @param PCADD4 32λ���� PC+4 
/// @param Y 32λ���
module SHIFT26T32(
    input [25: 0] X,
    input [31: 0] PCADD4,
    output [31: 0] Y);
    
    assign Y = {PCADD4[31:28], X[25:0], 2'b00};
endmodule
