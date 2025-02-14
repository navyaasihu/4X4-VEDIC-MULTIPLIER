`timescale 1ns/1ps

module gdi_and(
    input inA,
    input inB,
    output outAND
);

  nmos #(2) m1 (outAND, inA, 1'b0);
  pmos #(2) m2 (outAND, inB, 1'b1);

endmodule
