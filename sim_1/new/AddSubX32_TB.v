`timescale 1ns / 1ps

module AddSubX32_TB();
    reg [31:0] A;
    reg [31:0] B;
    reg Sub;
    wire [31:0] S;
    AddSubX32 instanceAddSubX32(A, B, Sub, S);

    initial begin
        A = 32'h00000000; B = 32'h00000000; Sub = 1'b0;

        #10 A = 32'h00000001; B = 32'h00000007; Sub = 0;
        #10 Sub = 1;

        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;
        #10 A = $random; B = $random; Sub = $random % 2;

        #10 $finish;
    end
endmodule
