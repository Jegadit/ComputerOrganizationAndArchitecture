module task_4_1(A, B, C, D, E, F);
   
   output F;
   input  A, B, C, D, E;
   wire   w1, w2, w3;

   nand G1(w1, A, B);
   nand G2(w2, C, D);
   not G3(w3, E);
   and G4(F, w1, w2, w3);

  endmodule