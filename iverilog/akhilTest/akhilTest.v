module akhilTest(A, B, C, D, X, Y);
   
   output X, Y;
   input  A, B, C, D;
   wire   w1, w2, w3, w4, w5;

   and G1(w1, A, B);
   or G2(w2, C, B);
   and G3(w3, C, D);
   and G4(w4, w1, w3);
   and G5(w5, w2, w3);
   or G6(X, w1, w4);
   and G7(Y, w3, w5);

  endmodule