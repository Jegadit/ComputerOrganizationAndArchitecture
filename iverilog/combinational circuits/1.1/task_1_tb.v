`include "task_1.v"

module task_1_tb;

   wire A, B, C, D, F;
   integer k=0;

   assign {A,B,C,D} = k;
   task_1 new_the_circuit(A, B, C, D, F);

   initial begin

      $dumpfile("task_1.vcd");
      $dumpvars(0, task_1_tb);

      for (k=0; k<16; k=k+1)
        #10 $display("done testing case %d", k);

      $finish;

   end

endmodule
