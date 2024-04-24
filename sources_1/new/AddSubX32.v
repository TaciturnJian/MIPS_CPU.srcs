`timescale 1ns / 1ps

/// @brief 32λ�ӷ���/������
/// @param A 32λ����˿�
/// @param B 32λ����˿�
/// @param Sub �Ƿ��������Ϊ1�����������ӷ�
/// @param S 32λ����˿�
module AddSubX32(
    input  [31: 0] A,
	input  [31: 0] B,
	input  Sub,
	output [31: 0] S);
	
    CLA32 adder(A, B ^ {32{Sub}}, Sub, S);
endmodule
