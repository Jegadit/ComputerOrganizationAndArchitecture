`timescale 1ns/1ns
`include "and_gate.v"

module and_gate_tb;
reg x,y;
wire z;
    
    and_gate utt(.A(x), .B(y), .y(z));
    
    initial begin
        //$dumpfile("and_gate_tb.vcd");
        //$dumpvars(0, and_gate_tb);
        $monitor("x = %d, y = %d, z = %d", x, y, z);
        
        x = 0;
        y = 0;
        #5;
        
        x = 0;
        y = 1;
        #5;
        
        x = 1;
        y = 0;
        #5;

        x = 1;
        y = 1;
        #5;

        $display("test complete");
        $finish;
    end
    
endmodule

//    iverilog -o and_gate_tb.vvp and_gate_tb.v
//    vvp and_gate_tb.vvp