// gdi_half_adder.v
// GDI-based Half Adder using transistor-level primitives

module gdi_half_adder(
    input  A, C, B,
    output SUM, CARRY
);
    wire w3;

    // Implement the half adder logic using GDI style
    pmos #(2) pmos_1 (w3, vdd, A);    // Pull-up for A
    nmos #(2) nmos_2 (w3, vss, A);     // Pull-down for A

    pmos #(2) pmos_3 (SUM, A, B);       // SUM pull-up network
    nmos #(2) nmos_4 (SUM, w3, B);       // SUM pull-down network

    pmos #(2) pmos_5 (CARRY, vdd, A);   // CARRY pull-up network
    nmos #(2) nmos_6 (CARRY, C, A);      // CARRY pull-down network
endmodule
