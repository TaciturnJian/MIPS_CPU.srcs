`timescale 1ns / 1ps

/// @brief 5位多路选择器 2选1 的测试
/// 经过验证，功能正常
module MUX2T1X5_TB();
    reg [4: 0] A0, A1;
    reg S;
    wire [4: 0] Y;
    MUX2T1X5 instanceMUX2T1X5(A0, A1, S, Y);

    initial begin
        A0 = 5'b00000;
        A1 = 5'b00001;
        S = 1'b0;

        #10 S = ~S;
        #10 S = ~S;
        #10 S = ~S;
        #10 S = ~S;
        #10 S = ~S;
        #10 S = ~S;
        #10 $finish;
    end
endmodule
