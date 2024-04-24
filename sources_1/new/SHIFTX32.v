`timescale 1ns / 1ps

/// @brief 32位移位计算器
/// @param X 32位输入端口
/// @param Sa 移位量
/// @param IsArith 是否算术移位，若为1则算术移位，否则逻辑移位
/// @param IsRight 是否右移，若为1则右移，否则左移 
module SHIFTX32(
    input [31 :0] X, 
    input [4: 0] Sa, 
    input IsArith, 
    input IsRight, 
    output [31: 0] Y);

    wire [31 : 0] T4, T3, T2, T1, T0, S4, S3, S2, S1;
    wire a = X[31] & IsArith;
    wire [15 : 0]e = {16{a}};
    parameter z = 16'h0000;

    wire [31 : 0]L1u, L1d, L2u, L2d, L3u, L3d, L4u, L4d, L5u, L5d;

    assign L1u = {X[15 : 0], z[15 : 0]};
    assign L1d = {e, X[31 : 16]};

    MUX2T1X32 M1l(L1u, L1d, IsRight, T4);
    MUX2T1X32 M1r(X, T4, Sa[4], S4);
    
    assign L2u = {S4[23 : 0], z[7 : 0]};
    assign L2d = {e[7 : 0], S4[31 : 8]};
    MUX2T1X32 M2l(L2u, L2d, IsRight, T3);
    MUX2T1X32 M2r(S4, T3, Sa[3], S3);
    
    assign L3u = {S3[27 : 0], z[3 : 0]};
    assign L3d = {e[3 : 0], S3[31 : 4]};
    MUX2T1X32 M3l(L3u, L3d, IsRight, T2);
    MUX2T1X32 M3r(S3, T2, Sa[2], S2);
    
    assign L4u = {S2[29 : 0], z[1 : 0]};
    assign L4d = {e[1 : 0], S2[31 : 2]};
    MUX2T1X32 M4l(L4u, L4d, IsRight, T1);
    MUX2T1X32 M4r(S2, T1, Sa[1], S1);
    
    assign L5u = {S1[30 : 0], z[0]};
    assign L5d = {e[0], S1[31 : 1]};
    MUX2T1X32 M5l(L5u, L5d, IsRight, T0);
    MUX2T1X32 M5r(S1, T0, Sa[0], Y);
endmodule
