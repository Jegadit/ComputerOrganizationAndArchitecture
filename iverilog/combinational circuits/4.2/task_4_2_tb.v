`include "task_4_2.v"

module task_4_2_tb;

   wire x, y, F;
   integer k=0;

   assign {x,y} = k;
   task_4_2 new_the(x, y, F);

   initial begin

      $dumpfile("task_4_2.vcd");
      $dumpvars(0, task_4_2_tb);
      $monitor("x = %d, y = %d, F = %d", x, y, F);

      for (k=0; k<4; k=k+1)
        #10 $display("done testing case %d", k);

      $finish;

   end

endmodule
