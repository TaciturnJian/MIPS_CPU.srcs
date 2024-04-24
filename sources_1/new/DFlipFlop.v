`timescale 1ns / 1ps

module DFlipFlop(
    input DataIn,  
    input Clock, 
    input Enable, 
    input NReset, 
    output reg Q, 
    output NQ);

    not get_NQ(NQ, Q);
    always @(posedge Clock or negedge NReset)
	if (~NReset) Q <= 0; else if(Enable) Q <= DataIn;
endmodule
