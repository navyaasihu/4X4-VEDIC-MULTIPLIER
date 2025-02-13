// vedic_4x4_multiplier.v
// 4x4 Vedic Multiplier using GDI logic
// Converted from DSCH 3.5 netlist generated code

module vedic_4x4_multiplier(
    input  in17,
    input  A1, C3, B3, B0, A3, A0, C2,
    input  B2, C1, A2, B1,
    output S2, S3, S5, S7, S1, S6, S0, S4
);
    // Declare internal nets
    wire w3,  w6,  w7,  w12, w17, w18, w19, w20;
    wire w21, w22, w23, w24, w28, w29, w31, w32;
    wire w35, w38, w39, w40, w41, w42, w43, w44;
    wire w45, w46, w47, w48, w49, w50, w51, w52;
    wire w53, w54, w55, w56, w57, w58, w59, w60;
    wire w61, w62, w63, w64, w65, w66, w67, w68;
    wire w69, w70, w71, w72, w73, w74, w75, w76;
    wire w77, w78, w79, w80, w81, w82, w83, w84;
    wire w85, w86, w87, w88, w89, w90, w91, w92;
    wire w93, w94, w95, w96, w97;

    // Assume global supply nets are defined elsewhere:
    // For simulation you can define:
    //  supply1 vdd;
    //  supply0 vss;

    // -------------------------------
    // Transistor-level implementations
    // -------------------------------

    pmos #(2) pmos_1_1  (w38, vdd, B0);  
    nmos #(2) nmos_2_2  (w38, vss, B0);  

    pmos #(2) pmos_3_3  (w40, w39, A0);  
    nmos #(2) nmos_4_4  (w40, w38, A0);  

    pmos #(2) pmos_5_5  (w42, w41, w40);  
    nmos #(2) nmos_6_6  (w42, vss, w40);  

    pmos #(2) pmos_7_7  (w6, w40, w3);  
    nmos #(2) nmos_8_8  (w6, w42, w3);  

    pmos #(2) pmos_9_9  (w43, w3, w42);  
    nmos #(2) nmos_10_10(w43, w39, w42);  

    bufif1 #(1) bufif1_11_11(w7, w43, w44);

    pmos #(2) pmos_1_12 (w45, vdd, B1);  
    nmos #(2) nmos_2_13 (w45, vss, B1);  

    pmos #(2) pmos_3_14 (w47, w46, A1);  
    nmos #(2) nmos_4_15 (w47, w45, A1);  

    pmos #(2) pmos_5_16 (w49, w48, w47);  
    nmos #(2) nmos_6_17 (w49, vss, w47);  

    pmos #(3) pmos_7_18 (w12, w47, C1);  
    nmos #(3) nmos_8_19 (w12, w49, C1);  

    pmos #(2) pmos_9_20 (w50, C1, w49);  
    nmos #(2) nmos_10_21(w50, w46, w49);  

    bufif1 #(1) bufif1_11_22(w3, w50, w51);

    pmos #(2) pmos_1_23 (w52, vdd, B2);  
    nmos #(2) nmos_2_24 (w52, vss, B2);  

    pmos #(2) pmos_3_25 (w54, w53, A2);  
    nmos #(2) nmos_4_26 (w54, w52, A2);  

    pmos #(2) pmos_5_27 (w56, w55, w54);  
    nmos #(2) nmos_6_28 (w56, vss, w54);  

    pmos #(3) pmos_7_29 (w17, w54, C2);  
    nmos #(3) nmos_8_30 (w17, w56, C2);  

    pmos #(2) pmos_9_31 (w57, C2, w56);  
    nmos #(2) nmos_10_32(w57, w53, w56);  

    bufif1 #(1) bufif1_11_33(w18, w57, w58);

    pmos #(2) pmos_1_34 (w59, vdd, w19);  
    nmos #(2) nmos_2_35 (w59, vss, w19);  

    pmos #(2) pmos_3_36 (S2, w19, w20);  
    nmos #(2) nmos_4_37 (S2, w59, w20);  

    pmos #(2) pmos_5_38 (w21, vdd, w19);  
    nmos #(2) nmos_6_39 (w21, w20, w19);  

    pmos #(2) pmos_1_40 (w60, vdd, w23);  
    nmos #(2) nmos_2_41 (w60, vss, w23);  

    pmos #(2) pmos_3_42 (w62, w61, w22);  
    nmos #(2) nmos_4_43 (w62, w60, w22);  

    pmos #(2) pmos_5_44 (w64, w63, w62);  
    nmos #(2) nmos_6_45 (w64, vss, w62);  

    pmos #(2) pmos_7_46 (S3, w62, w21);  
    nmos #(2) nmos_8_47 (S3, w64, w21);  

    pmos #(2) pmos_9_48 (w65, w21, w64);  
    nmos #(2) nmos_10_49(w65, w61, w64);  

    bufif1 #(1) bufif1_11_50(w24, w65, w66);

    pmos #(2) pmos_1_51 (w67, vdd, B3);  
    nmos #(2) nmos_2_52 (w67, vss, B3);  

    pmos #(2) pmos_3_53 (w69, w68, A3);  
    nmos #(2) nmos_4_54 (w69, w67, A3);  

    pmos #(2) pmos_5_55 (w71, w70, w69);  
    nmos #(2) nmos_6_56 (w71, vss, w69);  

    pmos #(3) pmos_7_57 (w19, w69, C3);  
    nmos #(3) nmos_8_58 (w19, w71, C3);  

    pmos #(2) pmos_9_59 (w72, C3, w71);  
    nmos #(2) nmos_10_60(w72, w68, w71);  

    bufif1 #(1) bufif1_11_61(w23, w72, w73);

    pmos #(2) pmos_1_62 (w74, vdd, w29);  
    nmos #(2) nmos_2_63 (w74, vss, w29);  

    pmos #(2) pmos_3_64 (w76, w75, w28);  
    nmos #(2) nmos_4_65 (w76, w74, w28);  

    pmos #(2) pmos_5_66 (w78, w77, w76);  
    nmos #(2) nmos_6_67 (w78, vss, w76);  

    pmos #(2) pmos_7_68 (S4, w76, w24);  
    nmos #(2) nmos_8_69 (S4, w78, w24);  

    pmos #(2) pmos_9_70 (w79, w24, w78);  
    nmos #(2) nmos_10_71(w79, w75, w78);  

    bufif1 #(1) bufif1_11_72 (w31, w79, w80);

    pmos #(2) pmos_1_73 (w81, vdd, w7);  
    nmos #(2) nmos_2_74 (w81, vss, w7);  

    pmos #(2) pmos_3_75 (w83, w82, A0);  
    nmos #(2) nmos_4_76 (w83, w81, A0);  

    pmos #(2) pmos_5_77 (w85, w84, w83);  
    nmos #(2) nmos_6_78 (w85, vss, w83);  

    pmos #(2) pmos_7_79 (S6, w83, w32);  
    nmos #(2) nmos_8_80 (S6, w85, w32);  

    pmos #(2) pmos_9_81 (w86, w32, w85);  
    nmos #(2) nmos_10_82(w86, w82, w85);  

    bufif1 #(1) bufif1_11_83 (S7, w86, w87);

    pmos #(2) pmos_1_84 (w88, vdd, w6);  
    nmos #(2) nmos_2_85 (w88, vss, w6);  

    pmos #(2) pmos_3_86 (w90, w89, w35);  
    nmos #(2) nmos_4_87 (w90, w88, w35);  

    pmos #(2) pmos_5_88 (w92, w91, w90);  
    nmos #(2) nmos_6_89 (w92, vss, w90);  

    pmos #(2) pmos_7_90 (S5, w90, w31);  
    nmos #(2) nmos_8_91 (S5, w92, w31);  

    pmos #(2) pmos_9_92 (w93, w31, w92);  
    nmos #(2) nmos_10_93(w93, w89, w92);  

    bufif1 #(1) bufif1_11_94 (w32, w93, w94);

    pmos #(2) pmos_1_95 (w95, vdd, w17);  
    nmos #(2) nmos_2_96 (w95, vss, w17);  

    pmos #(2) pmos_3_97 (w22, w17, B3);  
    nmos #(2) nmos_4_98 (w22, w95, B3);  

    pmos #(2) pmos_1_101 (w96, vdd, A3);  
    nmos #(2) nmos_2_102 (w96, vss, A3);  

    pmos #(2) pmos_3_103 (S1, A3, B3);  
    nmos #(2) nmos_4_104 (S1, w96, B3);  

    pmos #(2) pmos_5_105 (w20, vdd, A3);  
    nmos #(2) nmos_6_106 (w20, B3, A3);  

    pmos #(2) pmos_1_107 (w97, vdd, w12);  
    nmos #(2) nmos_2_108 (w97, vss, w12);  

    pmos #(2) pmos_3_109 (w28, w12, w18);  
    nmos #(2) nmos_4_110 (w28, w97, w18);  

    pmos #(2) pmos_5_111 (w35, vdd, w12);  
    nmos #(2) nmos_6_112 (w35, w18, w12);  

endmodule
