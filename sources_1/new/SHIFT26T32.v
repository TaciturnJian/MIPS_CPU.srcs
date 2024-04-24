`timescale 1ns / 1ps

/// @brief 26位与 PC+4 的前四位组合，并左移2位到32位
/// @param X 26位输入
/// @param PCADD4 32位输入 PC+4 
/// @param Y 32位输出
module SHIFT26T32(
    input [25: 0] X,
    input [31: 0] PCADD4,
    output [31: 0] Y);
    
    assign Y = {PCADD4[31:28], X[25:0], 2'b00};
endmodule
