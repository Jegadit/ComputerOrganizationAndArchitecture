module task_4_2(x, y, F);
   
   output F;
   input  x, y;
   wire   w1, w2, w3;

   nand G1(w1, x, y);
   nand G2(w2, x, w1);
   nand G3(w3, y, w1);
   nand G4(F, w2, w3);

  endmodule