`timescale 1ns / 1ps

/// @brief 32λ��·ѡ���� 4ѡ1
/// @param A0 �ź�1��32λ����˿�
/// @param A1 �ź�2��32λ����˿�
/// @param S ѡ���ź� ��Ϊ0ʱѡ��A0 ��Ϊ1ʱѡ��A1 2ʱѡ��A2 3ʱѡ��A3
/// @param Y 32λ����˿�
/// @testbench MUX4T1X32_TB.v
module MUX4T1X32(
    input [31: 0] A0, 
    input [31: 0] A1, 
    input [31: 0] A2, 
    input [31: 0] A3,
    input [1: 0] S,
    output [31: 0] Y);
    assign Y = S[1] ? ( S[0] ? A3 : A2 ) : ( S[0] ? A1 : A0 );
endmodule
