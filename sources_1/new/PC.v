`timescale 1ns / 1ps

/// @brief ��������������ڸ���ָ����ָ������еĵ�ַ��֧��һ����λ�ź�
/// @param Clock ʱ���ź�
/// @param NReset ��λ�źţ�L��Ч
/// @param Current ��ǰ��ַ
/// @param Address Ŀ���ַ����������ת��ַ��������һ��ָ��ĵ�ַ
module PC(
    input Clock,
    input NReset,
    input [31: 0] Current,
    output reg [31: 0] Address);
    
    initial Address <= 0;
    always @(posedge Clock or negedge NReset)  
    begin
        if (!NReset) Address <= 0;
        else Address <= Current;
    end
endmodule
