`timescale 1ns / 1ps

/// @brief 5λ��·ѡ���� 2ѡ1
/// @param A0 �ź�1��5λ����˿�
/// @param A1 �ź�2��5λ����˿�
/// @param S ѡ���ź� ��Ϊ0ʱѡ��A0 ��Ϊ1ʱѡ��A1
/// @param Y 5λ����˿�
/// @testbench MUX2T1X5_TB.v
module MUX2T1X5(
    input [4: 0] A0,
    input [4: 0] A1,
    input S,
    output [4: 0]Y);
    assign Y = S ? A1 : A0;
endmodule
