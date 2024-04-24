`timescale 1ns / 1ps

/// @brief PC + 4 ��ΪPC�Ĵ����ĸ����ź�
module PCAdd4(
    input [31: 0] PC, 
    output [31: 0] PCResult);

    reg [31:0] step = 32'h4;
    reg c0 = 0;
    wire cout;
    CLA32 cla(PC, step, c0, PCResult, cout);
endmodule
