`timescale 1ns / 1ps

/// @brief 带有异步清零的32位D触发器的代码实现
module DFlipFlopX32(
    input [31: 0] DataIn,
    input Clock,
    input Enable,
    input NReset,
    output [31: 0] Q,
    output [31: 0] NQ);
    
    DFlipFlop d00(DataIn[00], Clock, Enable, NReset, Q[00], NQ[00]);
    DFlipFlop d01(DataIn[01], Clock, Enable, NReset, Q[01], NQ[01]);
    DFlipFlop d02(DataIn[02], Clock, Enable, NReset, Q[02], NQ[02]);
    DFlipFlop d03(DataIn[03], Clock, Enable, NReset, Q[03], NQ[03]);
    DFlipFlop d04(DataIn[04], Clock, Enable, NReset, Q[04], NQ[04]);
    DFlipFlop d05(DataIn[05], Clock, Enable, NReset, Q[05], NQ[05]);
    DFlipFlop d06(DataIn[06], Clock, Enable, NReset, Q[06], NQ[06]);
    DFlipFlop d07(DataIn[07], Clock, Enable, NReset, Q[07], NQ[07]);
    DFlipFlop d08(DataIn[08], Clock, Enable, NReset, Q[08], NQ[08]);
    DFlipFlop d09(DataIn[09], Clock, Enable, NReset, Q[09], NQ[09]);
    DFlipFlop d10(DataIn[10], Clock, Enable, NReset, Q[10], NQ[10]);
    DFlipFlop d11(DataIn[11], Clock, Enable, NReset, Q[11], NQ[11]);
    DFlipFlop d12(DataIn[12], Clock, Enable, NReset, Q[12], NQ[12]);
    DFlipFlop d13(DataIn[13], Clock, Enable, NReset, Q[13], NQ[13]);
    DFlipFlop d14(DataIn[14], Clock, Enable, NReset, Q[14], NQ[14]);
    DFlipFlop d15(DataIn[15], Clock, Enable, NReset, Q[15], NQ[15]);
    DFlipFlop d16(DataIn[16], Clock, Enable, NReset, Q[16], NQ[16]);
    DFlipFlop d17(DataIn[17], Clock, Enable, NReset, Q[17], NQ[17]);
    DFlipFlop d18(DataIn[18], Clock, Enable, NReset, Q[18], NQ[18]);
    DFlipFlop d19(DataIn[19], Clock, Enable, NReset, Q[19], NQ[19]);
    DFlipFlop d20(DataIn[20], Clock, Enable, NReset, Q[20], NQ[20]);
    DFlipFlop d21(DataIn[21], Clock, Enable, NReset, Q[21], NQ[21]);
    DFlipFlop d22(DataIn[22], Clock, Enable, NReset, Q[22], NQ[22]);
    DFlipFlop d23(DataIn[23], Clock, Enable, NReset, Q[23], NQ[23]);
    DFlipFlop d24(DataIn[24], Clock, Enable, NReset, Q[24], NQ[24]);
    DFlipFlop d25(DataIn[25], Clock, Enable, NReset, Q[25], NQ[25]);
    DFlipFlop d26(DataIn[26], Clock, Enable, NReset, Q[26], NQ[26]);
    DFlipFlop d27(DataIn[27], Clock, Enable, NReset, Q[27], NQ[27]);
    DFlipFlop d28(DataIn[28], Clock, Enable, NReset, Q[28], NQ[28]);
    DFlipFlop d29(DataIn[29], Clock, Enable, NReset, Q[29], NQ[29]);
    DFlipFlop d30(DataIn[30], Clock, Enable, NReset, Q[30], NQ[30]);
    DFlipFlop d31(DataIn[31], Clock, Enable, NReset, Q[31], NQ[31]);
endmodule
