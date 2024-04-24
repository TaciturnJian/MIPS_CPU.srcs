`timescale 1ns / 1ps

module InstructionMemory(
    input [31: 0] Address,
    output [31: 0] Instruction);

    wire[31:0] rom[31:0];
    assign Instruction = rom[Address[6: 2]];
    /*
24010001
24020002
24030003
24040004
24050005
24060006
24070007
24080008
24090009
00432020
8c440004
ac450008
00831022
00831025
00831024
0083102a
10630001
8c620000
10640001
ac620000
08100009
    */

    assign rom[5'h0] = 32'h24020008;
    assign rom[5'h1] = 32'h2403000c;
    assign rom[5'h2] = 32'hac03000c;
    assign rom[5'h3] = 32'h24040010;
    assign rom[5'h4] = 32'h24050014;
    assign rom[5'h5] = 32'h00432020;
    assign rom[5'h6] = 32'h8c440004;
    assign rom[5'h7] = 32'hac450008;
    assign rom[5'h8] = 32'h00831022;
    assign rom[5'h9] = 32'h00831025;
    assign rom[5'hA] = 32'h00831024;
    assign rom[5'hB] = 32'h0083102a;
    assign rom[5'hC] = 32'h10630001;
    assign rom[5'hD] = 32'h8c620000;
    assign rom[5'hE] = 32'h10640001;
    assign rom[5'hF] = 32'hac620000;
    assign rom[5'h10] = 32'h2067000a;
    assign rom[5'h11] = 32'h34680009;
    assign rom[5'h12] = 32'h08100005;
    assign rom[5'h13] = 32'h0;
    assign rom[5'h14] = 32'h0;
    assign rom[5'h15] = 32'h0;
    assign rom[5'h16] = 32'h0;
    assign rom[5'h17] = 32'h0;
    assign rom[5'h18] = 32'h0;
    assign rom[5'h19] = 32'h0;
    assign rom[5'h1A] = 32'h0;           
    assign rom[5'h1B] = 32'h0;
    assign rom[5'h1C] = 32'h0;
    assign rom[5'h1D] = 32'h0;
    assign rom[5'h1E] = 32'h0;
    assign rom[5'h1F] = 32'h0;


/*
    assign rom[5'h00] = 32'h20010008;           //addi $1,$0,8 $1 = 8
    assign rom[5'h01] = 32'h3402000C;           //ori $2,$0,12 $2 = 12
    assign rom[5'h02] = 32'h00221820;           //add $3,$1,$2 $3 = 20
    assign rom[5'h03] = 32'h00412022;           //sub $4,$2,$1 $4 = 4
    assign rom[5'h04] = 32'h00222824;           //and $5,$1,$2 $5 = 8
    assign rom[5'h05] = 32'h00223025;           //or $6,$1,$2 $6 = 12
    assign rom[5'h06] = 32'h14220002;           //bne $1,$2,2
    assign rom[5'h07] = 32'h0;
    assign rom[5'h08] = 32'h0;
    assign rom[5'h09] = 32'h10220002;           // beq $1,$2,2
    assign rom[5'h0A] = 32'h0800000D;           // J 0D 
    assign rom[5'h0B] = 32'h0;
    assign rom[5'h0C] = 32'h0;
    assign rom[5'h0D] = 32'hAD02000A;           // sw $2 10($8) memory[$8+10] = 10
    assign rom[5'h0E] = 32'h8D04000A;           //lw $4 10($8) $4 = 12
    assign rom[5'h0F] = 32'h00221826;           //xor $3,$1,$2
    assign rom[5'h10] = 32'h00021900;           //sll $3,$2,4
    assign rom[5'h11] = 32'h00021902;           //srl $3,$2,4
    assign rom[5'h12] = 32'h00021903;           //sra $3,$2,4
    assign rom[5'h13] = 32'h30470009;           //andi $7,$2,9
    assign rom[5'h14] = 32'h382300EF;           //xori $3,$1,0xef
    assign rom[5'h15] = 32'h3C011234;           //lui $1,0x1234
    assign rom[5'h16] = 32'h0C00001A;           //Jal 1A
    assign rom[5'h17] = 32'h0800001A;           // J 1A
    assign rom[5'h18] = 32'h0;
    assign rom[5'h19] = 32'h0;
    assign rom[5'h1A] = 32'h03E00008;           //Jr 16
    assign rom[5'h1B] = 32'h0;
    assign rom[5'h1C] = 32'h0;
    assign rom[5'h1D] = 32'h0;
    assign rom[5'h1E] = 32'h0;
    assign rom[5'h1F] = 32'h0;
*/
endmodule
