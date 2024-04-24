`timescale 1ns / 1ps

/// @brief 给出要读取的两个寄存器编号和要写入的寄存器编号，
/// 然后由Qa和Qb端口更新RegAID和RegBID端口的输入编号分别输入其值。
/// @param RegAID 读取寄存器1的编号
/// @param RegBID 读取寄存器2的编号或立即数
/// @param DataIn 写入寄存器的数据
/// @param RegIDToWrite 写入寄存器编号3，输入信号。
/// @param EnableWrite 写入使能信号，为0的时候不能写入，D值不更新，为1的时候能写入，D值更新，输入信号。
module RegFile(
    input [4: 0] RegAID,
    input [4: 0] RegBID,
    input [31: 0] DataIn,
    input [4: 0] RegIDToWrite, 
    input EnableWrite,
    input Clock,
    input Reset,
    output [31: 0] QA,
    output [31: 0] QB);

    wire [31: 0] Y;
    wire [31: 0] q[31: 0];
    assign q[0] = 0;

    REGX32 reg32(DataIn, Y, Clock, Reset, 
        q[31], q[30], q[29], q[28], q[27], q[26], q[25], q[24], q[23], q[22], q[21], 
        q[20], q[19], q[18], q[17], q[16], q[15], q[14], q[13], q[12], q[11], q[10], 
        q[09], q[08], q[07], q[06], q[05], q[04], q[03], q[02], q[01], q[00]);

    MUX32T1X32 select_a(
        q[31], q[30], q[29], q[28], q[27], q[26], q[25], q[24], q[23], q[22], q[21],
        q[20], q[19], q[18], q[17], q[16], q[15], q[14], q[13], q[12], q[11], q[10],
        q[09], q[08], q[07], q[06], q[05], q[04], q[03], q[02], q[01], q[00], RegAID, QA);
        
    MUX32T1X32 select_b(
        q[31], q[30], q[29], q[28], q[27], q[26], q[25], q[24], q[23], q[22], q[21],
        q[20], q[19], q[18], q[17], q[16], q[15], q[14], q[13], q[12], q[11], q[10], 
        q[09], q[08], q[07], q[06], q[05], q[04], q[03], q[02], q[01], q[00], RegBID, QB);

    Decoder5T32 decoder(RegIDToWrite, EnableWrite, Y);
endmodule
