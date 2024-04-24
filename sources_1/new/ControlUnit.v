`timescale 1ns / 1ps

module ControlUnit(
    input [5: 0]Operator,
    input [5: 0]Func,
    input ALUZero,
    output RegRtNotRd,
    output Signed,
    output WriteReg,
    output RegRtNotImm,
    output [3: 0]ALUControl,
    output WriteMemory,
    output [1: 0]PCSelector,
    output FromRegToReg,
    output Shift,
    output Jump);

    wire i_add = (Operator == 6'b000000 & Func == 6'b100000) ? 1 : 0;
    wire i_sub = (Operator == 6'b000000 & Func == 6'b100010) ? 1 : 0;
    wire i_and = (Operator == 6'b000000 & Func == 6'b100100) ? 1 : 0;
    wire i_or  = (Operator == 6'b000000 & Func == 6'b100101) ? 1 : 0;
    wire i_xor = (Operator == 6'b000000 & Func == 6'b100110) ? 1 : 0;
    wire i_sll = (Operator == 6'b000000 & Func == 6'b000000) ? 1 : 0;
    wire i_srl = (Operator == 6'b000000 & Func == 6'b000010) ? 1 : 0;
    wire i_sra = (Operator == 6'b000000 & Func == 6'b000011) ? 1 : 0;
    wire i_jr  = (Operator == 6'b000000 & Func == 6'b001000) ? 1 : 0;
    
    wire i_addi = (Operator == 6'b001000) ? 1 : 0;
    wire i_addiu = (Operator == 6'b001001) ? 1 : 0;
    wire i_andi = (Operator == 6'b001100) ? 1 : 0; 
    wire i_ori  = (Operator == 6'b001101) ? 1 : 0;
    wire i_xori = (Operator == 6'b001110) ? 1 : 0;
    wire i_lw   = (Operator == 6'b100011) ? 1 : 0;
    wire i_sw   = (Operator == 6'b101011) ? 1 : 0;
    wire i_beq  = (Operator == 6'b000100) ? 1 : 0;
    wire i_bne  = (Operator == 6'b000101) ? 1 : 0;
    wire i_lui  = (Operator == 6'b001111) ? 1 : 0;
    
    wire i_j    = (Operator == 6'b000010) ? 1 : 0;
    wire i_jal  = (Operator == 6'b000011) ? 1 : 0;

    assign WriteReg = i_add | i_sub | i_and | i_or | i_xor | i_sll | i_srl | i_sra | i_addi | i_addiu | i_andi | i_ori | i_or | i_xori | i_lw | i_lui | i_jal;
    
    assign RegRtNotRd = i_addi | i_addiu | i_andi | i_ori | i_xori | i_lw | i_sw | i_lui | i_beq | i_bne | i_j | i_jal;
    
    assign FromRegToReg  = i_add | i_sub | i_and | i_or | i_xor | i_sll | i_srl | i_sra | i_addi | i_addiu | i_andi | i_ori | i_xori | i_sw | i_beq | i_bne | i_j | i_jal;
    
    assign RegRtNotImm = i_add | i_sub | i_and | i_or | i_xor | i_sll | i_srl | i_sra | i_beq | i_bne | i_j;
    
    assign Signed   = i_addi | i_lw | i_sw | i_beq | i_bne;
    
    assign ALUControl[3] = i_sra;
    
    assign ALUControl[2] = i_xor |i_lui | i_sll | i_srl | i_sra |i_xori;
    
    assign ALUControl[1] = i_and | i_or | i_lui | i_srl | i_sra | i_andi | i_ori;
    
    assign ALUControl[0] = i_sub | i_ori | i_or | i_sll | i_srl |i_sra| i_beq | i_bne;
    
    assign WriteMemory = i_sw;
    
    assign PCSelector[0] = (i_beq | ALUZero) | (i_bne &~ ALUZero) | i_jal | i_j;
    
    assign PCSelector[1] = i_j | i_jr | i_jal;
    
    assign Shift = i_sll | i_srl | i_sra;
    
    assign Jump = i_jal | i_jr;
endmodule
