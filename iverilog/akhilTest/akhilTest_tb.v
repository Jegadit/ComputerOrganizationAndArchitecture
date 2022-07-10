`include "akhilTest.v"

module akhilTest_tb;

   wire A, B, C, D, X, Y;
   integer k=0;

   assign {A,B,C,D} = k;
   akhilTest wtfquestion(A, B, C, D, X, Y);

   initial begin

      $dumpfile("akhilTest.vcd");
      $dumpvars(0, akhilTest_tb);
      $monitor("A = %d, B = %d, C = %d, D = %d, X = %d, Y = %d",A, B, C, D, X, Y);

      for (k=0; k<16; k=k+1)
        #10;

      $finish;
   end

endmodule
a