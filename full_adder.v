// gdi_full_adder.v
// GDI-based Full Adder using transistor-level primitives

module gdi_full_adder(
    input  C, A, B,
    output SUM, CARRY
);
    wire w4, w5, w7, w8, w9, w11, w12;

    pmos #(2) pmos_1 (w4, vdd, B);
    nmos #(2) nmos_2 (w4, vss, B);

    pmos #(2) pmos_3 (w7, w5, A);
    nmos #(2) nmos_4 (w7, w4, A);

    pmos #(2) pmos_5 (w9, w8, w7);
    nmos #(2) nmos_6 (w9, vss, w7);

    pmos #(2) pmos_7 (SUM, w7, C);
    nmos #(2) nmos_8 (SUM, w9, C);

    pmos #(2) pmos_9 (w11, C, w9);
    nmos #(2) nmos_10 (w11, w5, w9);

    bufif1 #(1) bufif1_11 (CARRY, w11, w12);
endmodule
