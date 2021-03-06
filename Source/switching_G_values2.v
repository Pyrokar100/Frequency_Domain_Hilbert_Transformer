// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\switching_G_values2.v
// Created: 2020-12-20 13:10:05
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: switching_G_values2
// Source Path: newhope_cambios/FDHT/DFT_2/switching_G_values2
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module switching_G_values2
          (clk,
           reset_x,
           enb,
           In1,
           In2,
           real_G_1_0,
           dout3,
           real_G_2_0,
           dout5,
           real_G_3_0,
           dout7,
           real_G_4_0,
           dout9,
           In11,
           In12,
           real_G_1_1,
           dout13,
           real_G_2_1,
           dout15,
           real_G_3_1,
           dout17,
           real_G_4_1,
           dout19,
           In21,
           In22,
           real_G_1_2,
           dout23,
           real_G_2_2,
           dout25,
           real_G_3_2,
           dout27,
           real_G_4_2,
           dout29,
           In31,
           In32,
           real_G_1_3,
           dout33,
           real_G_2_3,
           dout35,
           real_G_3_3,
           dout37,
           real_G_4_3,
           dout39,
           In41,
           In42,
           real_G_1_4,
           dout43,
           real_G_2_4,
           dout45,
           real_G_3_4,
           dout47,
           real_G_4_4,
           dout49,
           In51,
           Out1,
           Out2,
           Out3,
           Out4,
           Out5,
           Out6,
           Out7,
           Out8,
           Out9,
           Out10);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1;  // sfix37_En22
  input   signed [36:0] In2;  // sfix37_En22
  input   signed [36:0] real_G_1_0;  // sfix37_En22
  input   signed [36:0] dout3;  // sfix37_En22
  input   signed [36:0] real_G_2_0;  // sfix37_En22
  input   signed [36:0] dout5;  // sfix37_En22
  input   signed [36:0] real_G_3_0;  // sfix37_En22
  input   signed [36:0] dout7;  // sfix37_En22
  input   signed [36:0] real_G_4_0;  // sfix37_En22
  input   signed [36:0] dout9;  // sfix37_En22
  input   signed [36:0] In11;  // sfix37_En22
  input   signed [36:0] In12;  // sfix37_En22
  input   signed [36:0] real_G_1_1;  // sfix37_En22
  input   signed [36:0] dout13;  // sfix37_En22
  input   signed [36:0] real_G_2_1;  // sfix37_En22
  input   signed [36:0] dout15;  // sfix37_En22
  input   signed [36:0] real_G_3_1;  // sfix37_En22
  input   signed [36:0] dout17;  // sfix37_En22
  input   signed [36:0] real_G_4_1;  // sfix37_En22
  input   signed [36:0] dout19;  // sfix37_En22
  input   signed [36:0] In21;  // sfix37_En22
  input   signed [36:0] In22;  // sfix37_En22
  input   signed [36:0] real_G_1_2;  // sfix37_En22
  input   signed [36:0] dout23;  // sfix37_En22
  input   signed [36:0] real_G_2_2;  // sfix37_En22
  input   signed [36:0] dout25;  // sfix37_En22
  input   signed [36:0] real_G_3_2;  // sfix37_En22
  input   signed [36:0] dout27;  // sfix37_En22
  input   signed [36:0] real_G_4_2;  // sfix37_En22
  input   signed [36:0] dout29;  // sfix37_En22
  input   signed [36:0] In31;  // sfix37_En22
  input   signed [36:0] In32;  // sfix37_En22
  input   signed [36:0] real_G_1_3;  // sfix37_En22
  input   signed [36:0] dout33;  // sfix37_En22
  input   signed [36:0] real_G_2_3;  // sfix37_En22
  input   signed [36:0] dout35;  // sfix37_En22
  input   signed [36:0] real_G_3_3;  // sfix37_En22
  input   signed [36:0] dout37;  // sfix37_En22
  input   signed [36:0] real_G_4_3;  // sfix37_En22
  input   signed [36:0] dout39;  // sfix37_En22
  input   signed [36:0] In41;  // sfix37_En22
  input   signed [36:0] In42;  // sfix37_En22
  input   signed [36:0] real_G_1_4;  // sfix37_En22
  input   signed [36:0] dout43;  // sfix37_En22
  input   signed [36:0] real_G_2_4;  // sfix37_En22
  input   signed [36:0] dout45;  // sfix37_En22
  input   signed [36:0] real_G_3_4;  // sfix37_En22
  input   signed [36:0] dout47;  // sfix37_En22
  input   signed [36:0] real_G_4_4;  // sfix37_En22
  input   signed [36:0] dout49;  // sfix37_En22
  input   [7:0] In51;  // uint8
  output  signed [36:0] Out1;  // sfix37_En22
  output  signed [36:0] Out2;  // sfix37_En22
  output  signed [36:0] Out3;  // sfix37_En22
  output  signed [36:0] Out4;  // sfix37_En22
  output  signed [36:0] Out5;  // sfix37_En22
  output  signed [36:0] Out6;  // sfix37_En22
  output  signed [36:0] Out7;  // sfix37_En22
  output  signed [36:0] Out8;  // sfix37_En22
  output  signed [36:0] Out9;  // sfix37_En22
  output  signed [36:0] Out10;  // sfix37_En22


  wire signed [36:0] Subsystem2_out1;  // sfix37_En22
  wire signed [36:0] Subsystem2_out2;  // sfix37_En22
  wire signed [36:0] Subsystem1_out1;  // sfix37_En22
  wire signed [36:0] Subsystem1_out2;  // sfix37_En22
  wire signed [36:0] Subsystem3_out1;  // sfix37_En22
  wire signed [36:0] Subsystem3_out2;  // sfix37_En22
  wire signed [36:0] Subsystem4_out1;  // sfix37_En22
  wire signed [36:0] Subsystem4_out2;  // sfix37_En22
  wire signed [36:0] Subsystem5_out1;  // sfix37_En22
  wire signed [36:0] Subsystem5_out2;  // sfix37_En22


  Subsystem2_block2 u_Subsystem2 (.clk(clk),
                                  .reset_x(reset_x),
                                  .enb(enb),
                                  .In1(In1),  // sfix37_En22
                                  .In2(In2),  // sfix37_En22
                                  .In3(In11),  // sfix37_En22
                                  .In4(In12),  // sfix37_En22
                                  .In5(In21),  // sfix37_En22
                                  .In6(In22),  // sfix37_En22
                                  .In7(In31),  // sfix37_En22
                                  .In8(In32),  // sfix37_En22
                                  .In9(In41),  // sfix37_En22
                                  .In10(In42),  // sfix37_En22
                                  .In11(In51),  // uint8
                                  .Out1(Subsystem2_out1),  // sfix37_En22
                                  .Out2(Subsystem2_out2)  // sfix37_En22
                                  );

  assign Out1 = Subsystem2_out1;

  assign Out2 = Subsystem2_out2;

  Subsystem1_block u_Subsystem1 (.clk(clk),
                                 .reset_x(reset_x),
                                 .enb(enb),
                                 .In1(real_G_1_0),  // sfix37_En22
                                 .In2(dout3),  // sfix37_En22
                                 .In3(real_G_1_1),  // sfix37_En22
                                 .In4(dout13),  // sfix37_En22
                                 .In5(real_G_1_2),  // sfix37_En22
                                 .In6(dout23),  // sfix37_En22
                                 .In7(real_G_1_3),  // sfix37_En22
                                 .In8(dout33),  // sfix37_En22
                                 .In9(real_G_1_4),  // sfix37_En22
                                 .In10(dout43),  // sfix37_En22
                                 .In11(In51),  // uint8
                                 .Out1(Subsystem1_out1),  // sfix37_En22
                                 .Out2(Subsystem1_out2)  // sfix37_En22
                                 );

  assign Out3 = Subsystem1_out1;

  assign Out4 = Subsystem1_out2;

  Subsystem3_block2 u_Subsystem3 (.clk(clk),
                                  .reset_x(reset_x),
                                  .enb(enb),
                                  .In1(real_G_2_0),  // sfix37_En22
                                  .In2(dout5),  // sfix37_En22
                                  .In3(real_G_2_1),  // sfix37_En22
                                  .In4(dout15),  // sfix37_En22
                                  .In5(real_G_2_2),  // sfix37_En22
                                  .In6(dout25),  // sfix37_En22
                                  .In7(real_G_2_3),  // sfix37_En22
                                  .In8(dout35),  // sfix37_En22
                                  .In9(real_G_2_4),  // sfix37_En22
                                  .In10(dout45),  // sfix37_En22
                                  .In11(In51),  // uint8
                                  .Out1(Subsystem3_out1),  // sfix37_En22
                                  .Out2(Subsystem3_out2)  // sfix37_En22
                                  );

  assign Out5 = Subsystem3_out1;

  assign Out6 = Subsystem3_out2;

  Subsystem4_block2 u_Subsystem4 (.clk(clk),
                                  .reset_x(reset_x),
                                  .enb(enb),
                                  .In1(real_G_3_0),  // sfix37_En22
                                  .In2(dout7),  // sfix37_En22
                                  .In3(real_G_3_1),  // sfix37_En22
                                  .In4(dout17),  // sfix37_En22
                                  .In5(real_G_3_2),  // sfix37_En22
                                  .In6(dout27),  // sfix37_En22
                                  .In7(real_G_3_3),  // sfix37_En22
                                  .In8(dout37),  // sfix37_En22
                                  .In9(real_G_3_4),  // sfix37_En22
                                  .In10(dout47),  // sfix37_En22
                                  .In11(In51),  // uint8
                                  .Out1(Subsystem4_out1),  // sfix37_En22
                                  .Out2(Subsystem4_out2)  // sfix37_En22
                                  );

  assign Out7 = Subsystem4_out1;

  assign Out8 = Subsystem4_out2;

  Subsystem5_block2 u_Subsystem5 (.clk(clk),
                                  .reset_x(reset_x),
                                  .enb(enb),
                                  .In1(real_G_4_0),  // sfix37_En22
                                  .In2(dout9),  // sfix37_En22
                                  .In3(real_G_4_1),  // sfix37_En22
                                  .In4(dout19),  // sfix37_En22
                                  .In5(real_G_4_2),  // sfix37_En22
                                  .In6(dout29),  // sfix37_En22
                                  .In7(real_G_4_3),  // sfix37_En22
                                  .In8(dout39),  // sfix37_En22
                                  .In9(real_G_4_4),  // sfix37_En22
                                  .In10(dout49),  // sfix37_En22
                                  .In11(In51),  // uint8
                                  .Out1(Subsystem5_out1),  // sfix37_En22
                                  .Out2(Subsystem5_out2)  // sfix37_En22
                                  );

  assign Out9 = Subsystem5_out1;

  assign Out10 = Subsystem5_out2;

endmodule  // switching_G_values2

