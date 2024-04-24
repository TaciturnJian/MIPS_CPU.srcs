`timescale 1ns / 1ps

/// @brief 5位多路选择器 2选1
/// @param A0 信号1的5位输入端口
/// @param A1 信号2的5位输入端口
/// @param S 选择信号 当为0时选择A0 当为1时选择A1
/// @param Y 5位输出端口
/// @testbench MUX2T1X5_TB.v
module MUX2T1X5(
    input [4: 0] A0,
    input [4: 0] A1,
    input S,
    output [4: 0]Y);
    assign Y = S ? A1 : A0;
endmodule
