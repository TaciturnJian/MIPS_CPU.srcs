`timescale 1ns / 1ps

module REGX32(DataIn, En, Clock, Reset, 
    Q31, Q30, Q29, Q28, Q27, Q26, Q25, Q24, Q23, Q22, Q21, 
    Q20, Q19, Q18, Q17, Q16, Q15, Q14, Q13, Q12, Q11, Q10, 
    Q09, Q08, Q07, Q06, Q05, Q04, Q03, Q02, Q01, Q00);
    input [31: 0] DataIn;
    input [31: 0] En;
    input Clock;
    input Reset;
    output [31: 0] 
        Q31, Q30, Q29, Q28, Q27, Q26, Q25, Q24, Q23, Q22, Q21, 
        Q20, Q19, Q18, Q17, Q16, Q15, Q14, Q13, Q12, Q11, Q10, 
        Q09, Q08, Q07, Q06, Q05, Q04, Q03, Q02, Q01, Q00;

    wire [31: 0] qn [31: 0];
    assign Q00 = 0;
    assign qn[0] = 0;

    DFlipFlopX32 d31(DataIn, Clock, En[31], Reset, Q31, qn[31]);
    DFlipFlopX32 d30(DataIn, Clock, En[30], Reset, Q30, qn[30]);
    DFlipFlopX32 d29(DataIn, Clock, En[29], Reset, Q29, qn[29]);
    DFlipFlopX32 d28(DataIn, Clock, En[28], Reset, Q28, qn[28]);
    DFlipFlopX32 d27(DataIn, Clock, En[27], Reset, Q27, qn[27]);
    DFlipFlopX32 d26(DataIn, Clock, En[26], Reset, Q26, qn[26]);
    DFlipFlopX32 d25(DataIn, Clock, En[25], Reset, Q25, qn[25]);
    DFlipFlopX32 d24(DataIn, Clock, En[24], Reset, Q24, qn[24]);
    DFlipFlopX32 d23(DataIn, Clock, En[23], Reset, Q23, qn[23]);
    DFlipFlopX32 d22(DataIn, Clock, En[22], Reset, Q22, qn[22]);
    DFlipFlopX32 d21(DataIn, Clock, En[21], Reset, Q21, qn[21]);
    DFlipFlopX32 d20(DataIn, Clock, En[20], Reset, Q20, qn[20]);
    DFlipFlopX32 d19(DataIn, Clock, En[19], Reset, Q19, qn[19]);
    DFlipFlopX32 d18(DataIn, Clock, En[18], Reset, Q18, qn[18]);
    DFlipFlopX32 d17(DataIn, Clock, En[17], Reset, Q17, qn[17]);
    DFlipFlopX32 d16(DataIn, Clock, En[16], Reset, Q16, qn[16]);
    DFlipFlopX32 d15(DataIn, Clock, En[15], Reset, Q15, qn[15]);
    DFlipFlopX32 d14(DataIn, Clock, En[14], Reset, Q14, qn[14]);
    DFlipFlopX32 d13(DataIn, Clock, En[13], Reset, Q13, qn[13]);
    DFlipFlopX32 d12(DataIn, Clock, En[12], Reset, Q12, qn[12]);
    DFlipFlopX32 d11(DataIn, Clock, En[11], Reset, Q11, qn[11]);
    DFlipFlopX32 d10(DataIn, Clock, En[10], Reset, Q10, qn[10]);
    DFlipFlopX32 d09(DataIn, Clock, En[09], Reset, Q09, qn[09]);
    DFlipFlopX32 d08(DataIn, Clock, En[08], Reset, Q08, qn[08]);
    DFlipFlopX32 d07(DataIn, Clock, En[07], Reset, Q07, qn[07]);
    DFlipFlopX32 d06(DataIn, Clock, En[06], Reset, Q06, qn[06]);
    DFlipFlopX32 d05(DataIn, Clock, En[05], Reset, Q05, qn[05]);
    DFlipFlopX32 d04(DataIn, Clock, En[04], Reset, Q04, qn[04]);
    DFlipFlopX32 d03(DataIn, Clock, En[03], Reset, Q03, qn[03]);
    DFlipFlopX32 d02(DataIn, Clock, En[02], Reset, Q02, qn[02]);
    DFlipFlopX32 d01(DataIn, Clock, En[01], Reset, Q01, qn[01]);
endmodule
