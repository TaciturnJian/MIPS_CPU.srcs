`timescale 1ns / 1ps

/// @brief 数据存储器，通过控制信号，对数据寄存器进行读或者写操作，
/// 并且此处模块额外合并了输出DB的数据选择器，此模块同时输出写回寄存器组的数据DB。
/// @param Address 地址端口
/// @param DataIn 写入数据端口
/// @param Clock 时钟端口
/// @param EnableWrite 写使能端口
/// @param DataOut 读出数据端口
module DataMemory(
    input [31: 0] Address,
    input [31: 0] DataIn,
    input Clock,
    input EnableWrite,
    output [31: 0] DataOut);

    reg [31:0] ram[0:31];
    initial begin
        ram[31'h00] <= 32'h00;
        ram[31'h01] <= 32'h01;
        ram[31'h02] <= 32'h02;
        ram[31'h03] <= 32'h03;
        ram[31'h04] <= 32'h04;
        ram[31'h05] <= 32'h05;
        ram[31'h06] <= 32'h06;
        ram[31'h07] <= 32'h07;
        ram[31'h08] <= 32'h08;
        ram[31'h09] <= 32'h09;
        ram[31'h0A] <= 32'h0A;
        ram[31'h0B] <= 32'h0B;
        ram[31'h0C] <= 32'h0C;
        ram[31'h0D] <= 32'h0D;
        ram[31'h0E] <= 32'h0E;
        ram[31'h0F] <= 32'h0F;
        ram[31'h10] <= 32'h10;
        ram[31'h11] <= 32'h11;
        ram[31'h12] <= 32'h12;
        ram[31'h13] <= 32'h13;
        ram[31'h14] <= 32'h14;
        ram[31'h15] <= 32'h15;
        ram[31'h16] <= 32'h16;
        ram[31'h17] <= 32'h17;
        ram[31'h18] <= 32'h18;
        ram[31'h19] <= 32'h19;
        ram[31'h1A] <= 32'h1A;
        ram[31'h1B] <= 32'h1B;
        ram[31'h1C] <= 32'h1C;
        ram[31'h1D] <= 32'h1D;
        ram[31'h1F] <= 32'h1F;
    end
    always @ (posedge Clock) begin
        if (EnableWrite) ram[Address[6:2]] <= DataIn;
    end
    assign DataOut = ram[Address[6:2]];
endmodule
