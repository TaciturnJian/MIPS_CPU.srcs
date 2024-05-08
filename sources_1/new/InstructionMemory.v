`timescale 1ns / 1ps

module InstructionMemory(
    input [31: 0] Address,
    output [31: 0] Instruction);

    wire[31:0] rom[31:0];
    assign Instruction = rom[Address[6: 2]];

    /*
li $2, 8
li $3, 12
sw $3, 12
li $4, 16
li $5, 20

main:    
	add $4,$2,$3
	lw $4,4($2)
	sw $5,8($2)
	sub $2,$4,$3
	or $2,$4,$3
	and $2,$4,$3
	slt $2,$4,$3
	beq $3,$3,equ
	lw $2,0($3)

equ:
	beq $3,$4,exit
	sw $2,0($3)

exit:
	addi $7, $3, 10
	ori $8, $3, 9
	j main
    */

    /*
    .data
	var0: .word 0
	var1: .word 4
	var2: .word 8
	var3: .word 12
	var4: .word 16
	var5: .word 20
    */

    assign rom[0] = 32'h24020008;
    assign rom[1] = 32'h2403000c;
    assign rom[2] = 32'hac03000c;
    assign rom[3] = 32'h24040010;
    assign rom[4] = 32'h24050014;
    assign rom[5] = 32'h00432020;
    assign rom[6] = 32'h8c440004;
    assign rom[7] = 32'hac450008;
    assign rom[8] = 32'h00831022;
    assign rom[9] = 32'h00831025;
    assign rom[10] = 32'h00831024;
    assign rom[11] = 32'h0083102a;
    assign rom[12] = 32'h10630001;
    assign rom[13] = 32'h8c620000;
    assign rom[14] = 32'h10640001;
    assign rom[15] = 32'hac620000;
    assign rom[16] = 32'h2067000a;
    assign rom[17] = 32'h34680009;
    assign rom[18] = 32'h08100005;
    assign rom[19] = 32'h0;
    assign rom[20] = 32'h0;           
    assign rom[21] = 32'h0;
    assign rom[22] = 32'h0;
    assign rom[23] = 32'h0;
    assign rom[24] = 32'h0;
    assign rom[25] = 32'h0;
    assign rom[26] = 32'h0;
    assign rom[27] = 32'h0;
    assign rom[28] = 32'h0;
    assign rom[29] = 32'h0;
    assign rom[30] = 32'h0;
    assign rom[31] = 32'h0;
endmodule
