`timescale 1ns / 1ps

/// @brief PC + 4 作为PC寄存器的下一步信号
module PCAdd4(input [31: 0] PC, output [31: 0] PCResult);
    CLA32 calculator(PC, 32'h4, 0, PCResult);
endmodule
