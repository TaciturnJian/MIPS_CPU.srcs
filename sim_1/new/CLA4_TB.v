`timescale 1ns / 1ps

/// @brief 4位超前进位加法器 的测试
/// 经过验证，功能正常
module CLA4_TB();
    reg [3:0] A;
    reg [3:0] B;
    reg C0;
    wire [3:0] S;
    wire C4;

    CLA4 cla(A, B, C0, S, C4);

    initial begin
        A = 4'b0;
        B = 4'b0;
        C0 = 0;

        #10 A = 4'b1010; B = 4'b0101; C0 = 1;
        #10 A = 4'b0101; B = 4'b1010; C0 = 0;
        #10 A = 4'b1111; B = 4'b0000; C0 = 1;
        #10 A = 4'b0000; B = 4'b1111; C0 = 0;
        #10 $finish;
    end
endmodule
