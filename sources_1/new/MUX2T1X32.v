`timescale 1ns / 1ps

/// @brief 32λ��·ѡ���� 2ѡ1
/// @param A0 �ź�1��32λ����˿�
/// @param A1 �ź�2��32λ����˿�
/// @param S ѡ���ź� ��Ϊ0ʱѡ��A0 ��Ϊ1ʱѡ��A1
/// @param Y 32λ����˿�
/// @testbench MUX2T1X32_TB.v
module MUX2T1X32(
    input [31: 0] A0,
    input [31: 0] A1,
    input S,
    output [31: 0]Y);
    assign Y = S ? A1 : A0;
endmodule
