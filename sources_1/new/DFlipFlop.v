`timescale 1ns / 1ps

/// @brief D触发器，异步复位，同步置位
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
