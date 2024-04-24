`timescale 1ns / 1ps

/// @brief 32位超前进位加法器 A + B + Cin = Sum + Cout
/// @param Cin 进位输入端口
/// @param Cout 进位输出端口
module CLA32(
	input  [31: 0] A,
	input  [31: 0] B,
	input  Cin,
	output [31: 0] Sum,
	output Cout);

    wire C04, C08, C12, C16, C20, C24, C28;
    CLA4 Add00T03(A[3 :  0], B[3 :  0], Cin, Sum[3 :  0], C04);
    CLA4 Add04T07(A[7 :  4], B[7 :  4], C04, Sum[7 :  4], C08);
    CLA4 Add08T11(A[11:  8], B[11:  8], C08, Sum[11:  8], C12);
    CLA4 Add12T15(A[15: 12], B[15: 12], C12, Sum[15: 12], C16);
    CLA4 Add16T19(A[19: 16], B[19: 16], C16, Sum[19: 16], C20);
    CLA4 Add20T23(A[23: 20], B[23: 20], C20, Sum[23: 20], C24);
    CLA4 Add24T27(A[27: 24], B[27: 24], C24, Sum[27: 24], C28);
    CLA4 Add28T31(A[31: 28], B[31: 28], C28, Sum[31: 28], Cout);
endmodule
