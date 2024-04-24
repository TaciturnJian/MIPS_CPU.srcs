`timescale 1ns / 1ps

module PC_TB();
    reg Clock;
    reg NReset;
    reg [31:0] Current;
    wire [31:0] Address;

    PC u1 (Clock, NReset, Current, Address);

    initial begin
        Clock = 0;
        NReset = 0;
        Current = 32'h00000000;

        forever #10 Clock = ~Clock;
    end

    initial begin
        #20 NReset = 1; Result = 32'h00000004;
        #20 NReset = 0; Result = 32'h00000008;
        #20 NReset = 1; Result = 32'h0000000C;
        #20 NReset = 0; Result = 32'h00000010;
    end

endmodule
