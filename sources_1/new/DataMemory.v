`timescale 1ns / 1ps

/// @brief 数据存储器，通过控制信号，对数据寄存器进行读或者写操作，
/// 并且此处模块额外合并了输出DB的数据选择器，此模块同时输出写回寄存器组的数据DB。
module DataMemory(
    input [31: 0] Address,
    input [31: 0] DataIn,
    input Clock,
    input EnableWrite,
    output [31: 0] DataOut);

    reg [31:0] ram[0:31];

    integer i;
    initial begin
        for (i = 32'h00; i < 32'h20; i = i + 1) begin 
            ram[i] <= i * 4;
        end
    end

    always @ (posedge Clock) begin
        if (EnableWrite) ram[Address[4:0]] <= DataIn;
    end
    assign DataOut = ram[Address[4:0]];
endmodule
