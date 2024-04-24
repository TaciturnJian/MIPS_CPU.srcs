`timescale 1ns / 1ps

/// @brief 32位超前进位加法器 的测试
/// 经过验证，功能正常
module CLA32_TB();
    reg [31: 0] A, B;
    reg C0;
    wire [31: 0] S;
    wire C32;
    CLA32 instanceCLA32(A, B, C0, S, C32);
    
    initial begin
        A = 32'b0;
        B = 32'b0;
        C0 = 1'b0;
        #10 A = 32'b1;
        #10 B = 32'b1;
        #10 C0 = 1'b1;
        #10 C0 = 1'b0;
        #10 A = 32'b1111;
        #10 B = 32'b1111;
        #10 C0 = 1'b1;
        #10 $finish;
    end
endmodule
