`include "task_4_1.v"

module task_4_1_tb;

   wire A, B, C, D, E, F;
   integer k=0;

   assign {A,B,C,D,E} = k;
   task_4_1 new_the(A, B, C, D, E, F);

   initial begin

      $dumpfile("task_4_1.vcd");
      $dumpvars(0, task_4_1_tb);
      $monitor("A = %d, B = %d, C = %d, D = %d, E = %d, F = %d",A, B, C, D, E, F);

      for (k=0; k<32; k=k+1)
        #10 $display("done testing case %d", k);

      $finish;

   end

endmodule
