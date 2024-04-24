`timescale 1ns / 1ps

/// @brief 16位到32位扩展器 的测试
/// 经过验证，功能正常
module EXT16T32_TB();
    reg [15:0] X;
    reg S;
    wire [31:0] Y;

    EXT16T32 instanceEXT16T32(X, S, Y);

    initial begin
        X = 16'b0;
        S = 0;

        #10 X = 16'b1010101010101010; S = 1;
        #10 X = 16'b0101010101010101; S = 0;
        #10 X = 16'b1111000011110000; S = 1;
        #10 X = 16'b1111000011110000; S = 0;
        #10 X = 16'b0000111100001111; S = 0;
        
        #10 $finish;
    end
endmodule
