`timescale 1ns / 1ps

/// @brief 程序计数器，用于给出指令在指令储存器中的地址，支持一个复位信号
/// @param Clock 时钟信号
/// @param NReset 复位信号，L有效
/// @param Current 当前地址
/// @param Address 目标地址，可能是跳转地址或者是下一条指令的地址
module PC(
    input Clock,
    input NReset,
    input [31: 0] Current,
    output reg [31: 0] Address);
    
    initial Address <= 0;
    always @(posedge Clock or negedge NReset)  
    begin
        if (!NReset) Address <= 0;
        else Address <= Current;
    end
endmodule
