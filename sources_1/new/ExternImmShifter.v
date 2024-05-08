`timescale 1ns / 1ps

/// @brief 16位到32位扩展器
/// @param X 16位输入端口
/// @param S 是否有符号位，若为1则有符号位，否则无符号位
/// @param Y 32位输出端口
module ExternImmShifter(
    input [31: 0] ExternImm,
    input Clock,
    output reg [31: 0] Result);
    always @ (posedge Clock or ExternImm) begin
        Result <= (ExternImm << 2);
    end
    initial begin
        Result <= 32'h0;
    end
endmodule
