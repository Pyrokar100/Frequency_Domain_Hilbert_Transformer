// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT10_block.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT10_block
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT10_block
          (clk,
           reset_x,
           enb,
           x10_0_0,
           x10_1_0,
           x10_0_1,
           x10_1_1,
           x10_0_2,
           x10_1_2,
           x10_0_3,
           x10_1_3,
           x10_0_4,
           x10_1_4,
           alpha0_309017,
           alpha0_809017,
           alpha0_587785,
           alpha0_951056,
           X10_0_re,
           X10_0_im,
           X10_1_re,
           X10_1_im,
           X10_2_re,
           X10_2_im,
           X10_3_re,
           X10_3_im,
           X10_4_re,
           X10_4_im,
           X10_5_re,
           X10_5_im,
           X10_6_re,
           X10_6_im,
           X10_7_re,
           X10_7_im,
           X10_8_re,
           X10_8_im,
           X10_9_re,
           X10_9_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] x10_0_0;  // sfix37_En22
  input   signed [36:0] x10_1_0;  // sfix37_En22
  input   signed [36:0] x10_0_1;  // sfix37_En22
  input   signed [36:0] x10_1_1;  // sfix37_En22
  input   signed [36:0] x10_0_2;  // sfix37_En22
  input   signed [36:0] x10_1_2;  // sfix37_En22
  input   signed [36:0] x10_0_3;  // sfix37_En22
  input   signed [36:0] x10_1_3;  // sfix37_En22
  input   signed [36:0] x10_0_4;  // sfix37_En22
  input   signed [36:0] x10_1_4;  // sfix37_En22
  input   signed [36:0] alpha0_309017;  // sfix37_En22
  input   signed [36:0] alpha0_809017;  // sfix37_En22
  input   signed [36:0] alpha0_587785;  // sfix37_En22
  input   signed [36:0] alpha0_951056;  // sfix37_En22
  output  signed [36:0] X10_0_re;  // sfix37_En22
  output  signed [36:0] X10_0_im;  // sfix37_En22
  output  signed [36:0] X10_1_re;  // sfix37_En22
  output  signed [36:0] X10_1_im;  // sfix37_En22
  output  signed [36:0] X10_2_re;  // sfix37_En22
  output  signed [36:0] X10_2_im;  // sfix37_En22
  output  signed [36:0] X10_3_re;  // sfix37_En22
  output  signed [36:0] X10_3_im;  // sfix37_En22
  output  signed [36:0] X10_4_re;  // sfix37_En22
  output  signed [36:0] X10_4_im;  // sfix37_En22
  output  signed [36:0] X10_5_re;  // sfix37_En22
  output  signed [36:0] X10_5_im;  // sfix37_En22
  output  signed [36:0] X10_6_re;  // sfix37_En22
  output  signed [36:0] X10_6_im;  // sfix37_En22
  output  signed [36:0] X10_7_re;  // sfix37_En22
  output  signed [36:0] X10_7_im;  // sfix37_En22
  output  signed [36:0] X10_8_re;  // sfix37_En22
  output  signed [36:0] X10_8_im;  // sfix37_En22
  output  signed [36:0] X10_9_re;  // sfix37_En22
  output  signed [36:0] X10_9_im;  // sfix37_En22


  wire signed [36:0] DFT5_row_1_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out1_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out2_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out2_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out3_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out3_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out4_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out4_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out5_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_1_out5_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out1_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out2_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out2_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out3_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out3_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out4_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out4_im;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out5_re;  // sfix37_En22
  wire signed [36:0] DFT5_row_2_out5_im;  // sfix37_En22
  wire signed [36:0] W10_out1_re;  // sfix37_En22
  wire signed [36:0] W10_out1_im;  // sfix37_En22
  wire signed [36:0] W10_out2_re;  // sfix37_En22
  wire signed [36:0] W10_out2_im;  // sfix37_En22
  wire signed [36:0] W10_out3_re;  // sfix37_En22
  wire signed [36:0] W10_out3_im;  // sfix37_En22
  wire signed [36:0] W10_out4_re;  // sfix37_En22
  wire signed [36:0] W10_out4_im;  // sfix37_En22
  wire signed [36:0] W10_out5_re;  // sfix37_En22
  wire signed [36:0] W10_out5_im;  // sfix37_En22
  wire signed [36:0] W10_out6_re;  // sfix37_En22
  wire signed [36:0] W10_out6_im;  // sfix37_En22
  wire signed [36:0] W10_out7_re;  // sfix37_En22
  wire signed [36:0] W10_out7_im;  // sfix37_En22
  wire signed [36:0] W10_out8_re;  // sfix37_En22
  wire signed [36:0] W10_out8_im;  // sfix37_En22
  wire signed [36:0] W10_out9_re;  // sfix37_En22
  wire signed [36:0] W10_out9_im;  // sfix37_En22
  wire signed [36:0] W10_out10_re;  // sfix37_En22
  wire signed [36:0] W10_out10_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_1_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_1_out1_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_1_out2_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_1_out2_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_2_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_2_out1_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_2_out2_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_2_out2_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_3_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_3_out1_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_3_out2_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_3_out2_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_4_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_4_out1_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_4_out2_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_4_out2_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_5_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_5_out1_im;  // sfix37_En22
  wire signed [36:0] DFT2_column_5_out2_re;  // sfix37_En22
  wire signed [36:0] DFT2_column_5_out2_im;  // sfix37_En22


  DFT5_row_1 u_DFT5_row_1 (.clk(clk),
                           .reset_x(reset_x),
                           .enb(enb),
                           .in1(x10_0_0),  // sfix37_En22
                           .in2(x10_0_1),  // sfix37_En22
                           .in3(x10_0_2),  // sfix37_En22
                           .in4(x10_0_3),  // sfix37_En22
                           .in5(x10_0_4),  // sfix37_En22
                           .alpha0_309017(alpha0_309017),  // sfix37_En22
                           .alpha0_809017(alpha0_809017),  // sfix37_En22
                           .alpha0_587785(alpha0_587785),  // sfix37_En22
                           .alpha0_951056(alpha0_951056),  // sfix37_En22
                           .out1_re(DFT5_row_1_out1_re),  // sfix37_En22
                           .out1_im(DFT5_row_1_out1_im),  // sfix37_En22
                           .out2_re(DFT5_row_1_out2_re),  // sfix37_En22
                           .out2_im(DFT5_row_1_out2_im),  // sfix37_En22
                           .out3_re(DFT5_row_1_out3_re),  // sfix37_En22
                           .out3_im(DFT5_row_1_out3_im),  // sfix37_En22
                           .out4_re(DFT5_row_1_out4_re),  // sfix37_En22
                           .out4_im(DFT5_row_1_out4_im),  // sfix37_En22
                           .out5_re(DFT5_row_1_out5_re),  // sfix37_En22
                           .out5_im(DFT5_row_1_out5_im)  // sfix37_En22
                           );

  DFT5_row_2 u_DFT5_row_2 (.clk(clk),
                           .reset_x(reset_x),
                           .enb(enb),
                           .in1(x10_1_0),  // sfix37_En22
                           .in2(x10_1_1),  // sfix37_En22
                           .in3(x10_1_2),  // sfix37_En22
                           .in4(x10_1_3),  // sfix37_En22
                           .in5(x10_1_4),  // sfix37_En22
                           .alpha0_309017(alpha0_309017),  // sfix37_En22
                           .alpha0_809017(alpha0_809017),  // sfix37_En22
                           .alpha0_587785(alpha0_587785),  // sfix37_En22
                           .alpha0_951056(alpha0_951056),  // sfix37_En22
                           .out1_re(DFT5_row_2_out1_re),  // sfix37_En22
                           .out1_im(DFT5_row_2_out1_im),  // sfix37_En22
                           .out2_re(DFT5_row_2_out2_re),  // sfix37_En22
                           .out2_im(DFT5_row_2_out2_im),  // sfix37_En22
                           .out3_re(DFT5_row_2_out3_re),  // sfix37_En22
                           .out3_im(DFT5_row_2_out3_im),  // sfix37_En22
                           .out4_re(DFT5_row_2_out4_re),  // sfix37_En22
                           .out4_im(DFT5_row_2_out4_im),  // sfix37_En22
                           .out5_re(DFT5_row_2_out5_re),  // sfix37_En22
                           .out5_im(DFT5_row_2_out5_im)  // sfix37_En22
                           );

  W10 u_W10 (.clk(clk),
             .reset_x(reset_x),
             .enb(enb),
             .F10_0_0_re(DFT5_row_1_out1_re),  // sfix37_En22
             .F10_0_0_im(DFT5_row_1_out1_im),  // sfix37_En22
             .F10_0_1_re(DFT5_row_1_out2_re),  // sfix37_En22
             .F10_0_1_im(DFT5_row_1_out2_im),  // sfix37_En22
             .F10_0_2_re(DFT5_row_1_out3_re),  // sfix37_En22
             .F10_0_2_im(DFT5_row_1_out3_im),  // sfix37_En22
             .F10_0_3_re(DFT5_row_1_out4_re),  // sfix37_En22
             .F10_0_3_im(DFT5_row_1_out4_im),  // sfix37_En22
             .F10_0_4_re(DFT5_row_1_out5_re),  // sfix37_En22
             .F10_0_4_im(DFT5_row_1_out5_im),  // sfix37_En22
             .F10_1_0_re(DFT5_row_2_out1_re),  // sfix37_En22
             .F10_1_0_im(DFT5_row_2_out1_im),  // sfix37_En22
             .F10_1_1_re(DFT5_row_2_out2_re),  // sfix37_En22
             .F10_1_1_im(DFT5_row_2_out2_im),  // sfix37_En22
             .F10_1_2_re(DFT5_row_2_out3_re),  // sfix37_En22
             .F10_1_2_im(DFT5_row_2_out3_im),  // sfix37_En22
             .F10_1_3_re(DFT5_row_2_out4_re),  // sfix37_En22
             .F10_1_3_im(DFT5_row_2_out4_im),  // sfix37_En22
             .F10_1_4_re(DFT5_row_2_out5_re),  // sfix37_En22
             .F10_1_4_im(DFT5_row_2_out5_im),  // sfix37_En22
             .alpha0_309017(alpha0_309017),  // sfix37_En22
             .alpha0_809017(alpha0_809017),  // sfix37_En22
             .alpha0_587785(alpha0_587785),  // sfix37_En22
             .alpha0_951056(alpha0_951056),  // sfix37_En22
             .G10_0_0_re(W10_out1_re),  // sfix37_En22
             .G10_0_0_im(W10_out1_im),  // sfix37_En22
             .G10_1_0_re(W10_out2_re),  // sfix37_En22
             .G10_1_0_im(W10_out2_im),  // sfix37_En22
             .G10_0_1_re(W10_out3_re),  // sfix37_En22
             .G10_0_1_im(W10_out3_im),  // sfix37_En22
             .G10_1_1_re(W10_out4_re),  // sfix37_En22
             .G10_1_1_im(W10_out4_im),  // sfix37_En22
             .G10_0_2_re(W10_out5_re),  // sfix37_En22
             .G10_0_2_im(W10_out5_im),  // sfix37_En22
             .G10_1_2_re(W10_out6_re),  // sfix37_En22
             .G10_1_2_im(W10_out6_im),  // sfix37_En22
             .G10_0_3_re(W10_out7_re),  // sfix37_En22
             .G10_0_3_im(W10_out7_im),  // sfix37_En22
             .G10_1_3_re(W10_out8_re),  // sfix37_En22
             .G10_1_3_im(W10_out8_im),  // sfix37_En22
             .G10_0_4_re(W10_out9_re),  // sfix37_En22
             .G10_0_4_im(W10_out9_im),  // sfix37_En22
             .G10_1_4_re(W10_out10_re),  // sfix37_En22
             .G10_1_4_im(W10_out10_im)  // sfix37_En22
             );

  DFT2_column_1 u_DFT2_column_1 (.clk(clk),
                                 .reset_x(reset_x),
                                 .enb(enb),
                                 .in1_re(W10_out1_re),  // sfix37_En22
                                 .in1_im(W10_out1_im),  // sfix37_En22
                                 .in2_re(W10_out2_re),  // sfix37_En22
                                 .in2_im(W10_out2_im),  // sfix37_En22
                                 .out1_re(DFT2_column_1_out1_re),  // sfix37_En22
                                 .out1_im(DFT2_column_1_out1_im),  // sfix37_En22
                                 .out2_re(DFT2_column_1_out2_re),  // sfix37_En22
                                 .out2_im(DFT2_column_1_out2_im)  // sfix37_En22
                                 );

  assign X10_0_re = DFT2_column_1_out1_re;

  assign X10_0_im = DFT2_column_1_out1_im;

  DFT2_column_2 u_DFT2_column_2 (.clk(clk),
                                 .reset_x(reset_x),
                                 .enb(enb),
                                 .in1_re(W10_out3_re),  // sfix37_En22
                                 .in1_im(W10_out3_im),  // sfix37_En22
                                 .in2_re(W10_out4_re),  // sfix37_En22
                                 .in2_im(W10_out4_im),  // sfix37_En22
                                 .out1_re(DFT2_column_2_out1_re),  // sfix37_En22
                                 .out1_im(DFT2_column_2_out1_im),  // sfix37_En22
                                 .out2_re(DFT2_column_2_out2_re),  // sfix37_En22
                                 .out2_im(DFT2_column_2_out2_im)  // sfix37_En22
                                 );

  assign X10_1_re = DFT2_column_2_out1_re;

  assign X10_1_im = DFT2_column_2_out1_im;

  DFT2_column_3 u_DFT2_column_3 (.clk(clk),
                                 .reset_x(reset_x),
                                 .enb(enb),
                                 .in1_re(W10_out5_re),  // sfix37_En22
                                 .in1_im(W10_out5_im),  // sfix37_En22
                                 .in2_re(W10_out6_re),  // sfix37_En22
                                 .in2_im(W10_out6_im),  // sfix37_En22
                                 .out1_re(DFT2_column_3_out1_re),  // sfix37_En22
                                 .out1_im(DFT2_column_3_out1_im),  // sfix37_En22
                                 .out2_re(DFT2_column_3_out2_re),  // sfix37_En22
                                 .out2_im(DFT2_column_3_out2_im)  // sfix37_En22
                                 );

  assign X10_2_re = DFT2_column_3_out1_re;

  assign X10_2_im = DFT2_column_3_out1_im;

  DFT2_column_4 u_DFT2_column_4 (.clk(clk),
                                 .reset_x(reset_x),
                                 .enb(enb),
                                 .in1_re(W10_out7_re),  // sfix37_En22
                                 .in1_im(W10_out7_im),  // sfix37_En22
                                 .in2_re(W10_out8_re),  // sfix37_En22
                                 .in2_im(W10_out8_im),  // sfix37_En22
                                 .out1_re(DFT2_column_4_out1_re),  // sfix37_En22
                                 .out1_im(DFT2_column_4_out1_im),  // sfix37_En22
                                 .out2_re(DFT2_column_4_out2_re),  // sfix37_En22
                                 .out2_im(DFT2_column_4_out2_im)  // sfix37_En22
                                 );

  assign X10_3_re = DFT2_column_4_out1_re;

  assign X10_3_im = DFT2_column_4_out1_im;

  DFT2_column_5 u_DFT2_column_5 (.clk(clk),
                                 .reset_x(reset_x),
                                 .enb(enb),
                                 .in1_re(W10_out9_re),  // sfix37_En22
                                 .in1_im(W10_out9_im),  // sfix37_En22
                                 .in2_re(W10_out10_re),  // sfix37_En22
                                 .in2_im(W10_out10_im),  // sfix37_En22
                                 .out1_re(DFT2_column_5_out1_re),  // sfix37_En22
                                 .out1_im(DFT2_column_5_out1_im),  // sfix37_En22
                                 .out2_re(DFT2_column_5_out2_re),  // sfix37_En22
                                 .out2_im(DFT2_column_5_out2_im)  // sfix37_En22
                                 );

  assign X10_4_re = DFT2_column_5_out1_re;

  assign X10_4_im = DFT2_column_5_out1_im;

  assign X10_5_re = DFT2_column_1_out2_re;

  assign X10_5_im = DFT2_column_1_out2_im;

  assign X10_6_re = DFT2_column_2_out2_re;

  assign X10_6_im = DFT2_column_2_out2_im;

  assign X10_7_re = DFT2_column_3_out2_re;

  assign X10_7_im = DFT2_column_3_out2_im;

  assign X10_8_re = DFT2_column_4_out2_re;

  assign X10_8_im = DFT2_column_4_out2_im;

  assign X10_9_re = DFT2_column_5_out2_re;

  assign X10_9_im = DFT2_column_5_out2_im;

endmodule  // DFT10_block
