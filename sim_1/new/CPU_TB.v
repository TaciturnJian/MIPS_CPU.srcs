`timescale 1ns / 1ps

module CPU_TB();
    reg clock, nreset;
    CPU cpu(clock, nreset);

    initial begin        
	    clock <= 0;
	    nreset <= 0;

      #5 nreset <= 1;

    end
    always #5 clock <= ~clock;
 endmodule
