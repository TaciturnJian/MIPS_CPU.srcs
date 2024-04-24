`timescale 1ns / 1ps

/// @brief 32位多路选择器 2选1
/// @param A0 信号1的32位输入端口
/// @param A1 信号2的32位输入端口
/// @param S 选择信号 当为0时选择A0 当为1时选择A1
/// @param Y 32位输出端口
/// @testbench MUX2T1X32_TB.v
module MUX2T1X32(
    input [31: 0] A0,
    input [31: 0] A1,
    input S,
    output [31: 0]Y);
    assign Y = S ? A1 : A0;
endmodule
