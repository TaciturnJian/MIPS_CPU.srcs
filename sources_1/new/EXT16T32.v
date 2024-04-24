`timescale 1ns / 1ps

/// @brief 16位到32位扩展器
/// @param X 16位输入端口
/// @param S 是否有符号位，若为1则有符号位，否则无符号位
/// @param Y 32位输出端口
module EXT16T32(
    input [15: 0] X,
    input S,
    output [31: 0] Y);
    MUX2T1X32 selector({16'b0, X}, {{16{X[15]}}, X}, S, Y);
endmodule
