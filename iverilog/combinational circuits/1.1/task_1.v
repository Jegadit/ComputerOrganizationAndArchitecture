module task_1(A, B, C, D, F);
   
   output F;
   input  A, B, C, D;
   wire   w1, w2;

   and G1(w1, A, B);
   and G2(w2, C, D);
   or  G3(F, w1, w2);

  endmodule