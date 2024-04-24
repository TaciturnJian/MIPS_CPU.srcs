`timescale 1ns / 1ps

/// @brief 32位加法器/减法器
/// @param A 32位输入端口
/// @param B 32位输入端口
/// @param Sub 是否减法，若为1则减法，否则加法
/// @param S 32位输出端口
module AddSubX32(
    input  [31: 0] A,
	input  [31: 0] B,
	input  Sub,
	output [31: 0] S);
	
    CLA32 adder(A, B ^ {32{Sub}}, Sub, S);
endmodule
