`timescale 1ns / 1ps

/// @brief 4λ��ǰ��λ�ӷ���
/// @param A 4λ����˿�
/// @param B 4λ����˿�
/// @param C0 ��λ����˿�
/// @param S 4λ����˿�
/// @param C4 ��λ����˿�
module CLA4(
	input  [3: 0] A,
	input  [3: 0] B,
	input  C0,
	output [3: 0] S,
	output C4);
    
	wire [3: 0] g, p;
	wire [4: 0] c;

	assign c[0] = C0;
	assign p 	= A ^ B;
	assign g 	= A & B;
	assign c[1] = g[0] | ( p[0] & c[0] );
	assign c[2] = g[1] | ( p[1] & ( g[0] | ( p[0] & c[0])));
	assign c[3] = g[2] | ( p[2] & ( g[1] | ( p[1] & ( g[0] | ( p[0] & c[0] )))));
	assign c[4] = g[3] | ( p[3] & ( g[2] | ( p[2] & ( g[1] | ( p[1] & ( g[0] | ( p[0] & c[0] )))))));
	assign S  	= p[3: 0] ^ c[3: 0];
	assign C4 	= c[4];
endmodule
