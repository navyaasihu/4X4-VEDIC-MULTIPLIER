// gdi_half_adder.v
// GDI-based Half Adder Netlist (Transistor-Level)
module gdi_half_adder(
    input  A, C, B,
    output SUM, CARRY
);
    wire w3;
    
    // Inverter or buffer for input A (creates a conditioned signal w3)
    pmos #(2) pmos_1 (w3, vdd, A);    // Pull-up transistor for A
    nmos #(2) nmos_2 (w3, vss, A);     // Pull-down transistor for A

    // SUM Generation: GDI cell that produces XOR-like behavior.
    // When B is applied to the transistor gates, the pMOS and nMOS networks combine A and its buffered complement.
    pmos #(2) pmos_3 (SUM, A, B);       // Pull-up network for SUM
    nmos #(2) nmos_4 (SUM, w3, B);       // Pull-down network for SUM

    // CARRY Generation: GDI cell for AND function.
    // The carry is generated using A as a control: when A is high, nMOS pulls CARRY to C (B) level.
    pmos #(2) pmos_5 (CARRY, vdd, A);   // Pull-up network for CARRY
    nmos #(2) nmos_6 (CARRY, C, A);      // Pull-down network for CARRY
endmodule
