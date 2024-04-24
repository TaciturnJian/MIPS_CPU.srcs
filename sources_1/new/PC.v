`timescale 1ns / 1ps

/// @brief ��������������ڸ���ָ����ָ������еĵ�ַ��֧��һ����λ�ź�
/// @param Clock ʱ���ź�
/// @param NReset ��λ�ź�
/// @param Current ��ǰ��ַ
/// @param Address Ŀ���ַ����������ת��ַ��������һ��ָ��ĵ�ַ
module PC(
    input Clock, input NReset,
    input [31: 0] Current, output reg [31: 0] Address);
    
    initial Address <= 32'h0;
    always @(posedge Clock or negedge NReset) begin
        if (!NReset) Address <= 32'h0;
        else Address <= Current;
    end
endmodule
