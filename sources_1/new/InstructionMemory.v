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

    assign rom[5'h0] = 32'h24020008;    //li $2, 8
    assign rom[5'h1] = 32'h2403000c;    //li $3, 12
    assign rom[5'h2] = 32'hac03000c;    //sw $3, 12
    assign rom[5'h3] = 32'h24040010;    //li $4, 16
    assign rom[5'h4] = 32'h24050014;    //li $5, 20
    assign rom[5'h5] = 32'h00432020;    //add $4,$2,$3
    assign rom[5'h6] = 32'h8c440004;    //lw $4,4($2)
    assign rom[5'h7] = 32'hac450008;    //sw $5,8($2)
    assign rom[5'h8] = 32'h00831022;    //sub $2,$4,$3
    assign rom[5'h9] = 32'h00831025;    //or $2,$4,$3
    assign rom[5'h10] = 32'h00831024;   //and $2,$4,$3
    assign rom[5'h11] = 32'h0083102a;   //slt $2,$4,$3
    assign rom[5'h12] = 32'h10630001;   //beq $3,$3,equ
    assign rom[5'h13] = 32'h8c620000;   //lw $2,0($3)
    assign rom[5'h14] = 32'h10640001;   //beq $3,$4,exit
    assign rom[5'h15] = 32'hac620000;   //sw $2,0($3)
    assign rom[5'h16] = 32'h2067000a;   //exit: addi $7, $3, 10
    assign rom[5'h17] = 32'h34680009;   //ori $8, $3, 9
    assign rom[5'h18] = 32'h08100005;   //j main
    assign rom[5'h19] = 32'h0;
    assign rom[5'h1A] = 32'h0;           
    assign rom[5'h1B] = 32'h0;
    assign rom[5'h1C] = 32'h0;
    assign rom[5'h1D] = 32'h0;
    assign rom[5'h1E] = 32'h0;
    assign rom[5'h1F] = 32'h0;
endmodule
