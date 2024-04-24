`timescale 1ns / 1ps

/// @brief 32位多路选择器 4选1
/// @param A0 信号1的32位输入端口
/// @param A1 信号2的32位输入端口
/// @param S 选择信号 当为0时选择A0 当为1时选择A1 2时选择A2 3时选择A3
/// @param Y 32位输出端口
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
