`timescale 1ns / 1ps

/// @brief 32位多路选择器 4选1 的测试
/// 经过验证，功能正常
module MUX4T1X32_TB();
    reg [31:0] A0, A1, A2, A3;
    reg [1:0] S;
    wire [31:0] Y;
    MUX4T1X32 instanceMUX4T1X32(A0, A1, A2, A3, S, Y);

    initial begin
        A0 = 32'h00000000;
        A1 = 32'h00000001;
        A2 = 32'h00000010;
        A3 = 32'h00000011;
        S = 2'b00;

        #10 S = 2'b01;
        #10 S = 2'b10;
        #10 S = 2'b11;
        #10 S = 2'b00;
        #10 S = 2'b01;
        #10 S = 2'b10;
        #10 S = 2'b11;
        #10 S = 2'b00;
        #10 S = 2'b01;
        #10 S = 2'b10;
        #10 S = 2'b11;
        #10 S = 2'b00;
        #10 $finish;
    end
endmodule
