`timescale 1ns / 1ps

/// @brief ���ݴ洢����ͨ�������źţ������ݼĴ������ж�����д������
/// ���Ҵ˴�ģ�����ϲ������DB������ѡ��������ģ��ͬʱ���д�ؼĴ����������DB��
module DataMemory(
    input [31: 0] Address,
    input [31: 0] DataIn,
    input Clock,
    input EnableWrite,
    output [31: 0] DataOut);

    reg [31:0] ram[0:31];

    integer i;
    initial for (integer i = 32'h00; i < 32'h20; i = i + 1) ram[i] <= i * 4; 

    always @ (posedge Clock) begin
        if (EnableWrite) ram[Address[6:2]] <= DataIn;
    end
    assign DataOut = ram[Address[6:2]];
endmodule
