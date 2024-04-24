`timescale 1ns / 1ps

/// @brief 16λ��32λ��չ��
/// @param X 16λ����˿�
/// @param S �Ƿ��з���λ����Ϊ1���з���λ�������޷���λ
/// @param Y 32λ����˿�
module EXT16T32(
    input [15: 0] X,
    input S,
    output [31: 0] Y);
    MUX2T1X32 selector({16'b0, X}, {{16{X[15]}}, X}, S, Y);
endmodule
