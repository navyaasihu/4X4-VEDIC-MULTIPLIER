// gdi_full_adder.v
// GDI-based Full Adder Netlist (Transistor-Level)
module gdi_full_adder(
    input  C, A, B,
    output SUM, CARRY
);
    wire w4, w5, w7, w8, w9, w11, w12;

    // Stage 1: Invert or buffer input B.
    pmos #(2) pmos_1 (w4, vdd, B);
    nmos #(2) nmos_2 (w4, vss, B);

    // Stage 2: Combine A with buffered B.
    // Here the pMOS uses an external node w5 (which could be a bias or control signal) and the nMOS uses the inversion of B (w4)
    pmos #(2) pmos_3 (w7, w5, A);
    nmos #(2) nmos_4 (w7, w4, A);

    // Stage 3: Condition the intermediate signal w7.
    pmos #(2) pmos_5 (w9, w8, w7);
    nmos #(2) nmos_6 (w9, vss, w7);

    // Stage 4: Generate the SUM output using carry-in C as a selector.
    // The pMOS passes w7 when C is low; the nMOS passes w9 when C is high.
    pmos #(2) pmos_7 (SUM, w7, C);
    nmos #(2) nmos_8 (SUM, w9, C);

    // Stage 5: Generate an intermediate carry signal.
    pmos #(2) pmos_9 (w11, C, w9);
    nmos #(2) nmos_10 (w11, w5, w9);

    // Stage 6: Buffer the carry signal to produce the final CARRY output.
    bufif1 #(1) bufif1_11 (CARRY, w11, w12);
endmodule
