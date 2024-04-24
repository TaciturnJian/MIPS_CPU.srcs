`timescale 1ns / 1ps

module SHIFTX32_TB();
    reg [31:0] X;
    reg [4:0] Sa;
    reg IsArith;
    reg IsRight;
    wire [31:0] Y;

    // 实例化被测试模块
    SHIFTX32 instanceSHIFTX32(X, Sa, IsArith, IsRight, Y);

    initial begin
        X = 32'h00000000; Sa = 5'b00000; IsArith = 0; IsRight = 0;

        #10 X = 32'h00000001; Sa = 5'b00001; IsArith = 0; IsRight = 0;
        #10 X = 32'h00000001; Sa = 5'b00010; IsArith = 0; IsRight = 0;

        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        #10 X = $random; Sa = $random % 32; IsArith = $random % 2; IsRight = $random % 2;
        
        #10 $finish;
    end
endmodule
