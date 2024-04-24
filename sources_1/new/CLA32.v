`timescale 1ns / 1ps

/// @brief 32位超前进位加法器
/// @param A 32位输入端口
/// @param B 32位输入端口
/// @param C0 进位输入端口
/// @param S 32位输出端口
/// @param C32 进位输出端口
module CLA32(
	input  [31: 0] A,
	input  [31: 0] B,
	input  C0,
	output [31: 0] S,
	output C32);

    wire C4, C8, C12, C16, C20, C24, C28;
    CLA4 Add0T3(A[3: 0], B[3: 0], C0, S[3: 0], C4);
    CLA4 Add4T7(A[7: 4], B[7: 4], C4, S[7: 4], C8);
    CLA4 Add8T11(A[11: 8], B[11: 8], C8, S[11: 8], C12);
    CLA4 Add12T15(A[15: 12], B[15: 12], C12, S[15: 12], C16);
    CLA4 Add16T19(A[19: 16], B[19: 16], C16, S[19: 16], C20);
    CLA4 Add20T23(A[23: 20], B[23: 20], C20, S[23: 20], C24);
    CLA4 Add24T27(A[27: 24], B[27: 24], C24, S[27: 24], C28);
    CLA4 Add28T31(A[31: 28], B[31: 28], C28, S[31: 28], C32);
endmodule
