`timescale 1ns / 1ps

/// @brief 32λ��·ѡ���� 2ѡ1 �Ĳ���
/// ������֤����������
module MUX2T1X32_TB();
    reg [31:0] A0, A1;
    reg S;
    wire [31:0] Y;
    MUX2T1X32 instanceMUX2T1X32(A0, A1, S, Y);

    initial begin
        A0 = 32'h00000000;
        A1 = 32'h00000001;
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
