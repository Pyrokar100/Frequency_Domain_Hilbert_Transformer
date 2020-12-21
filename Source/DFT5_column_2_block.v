// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT5_column_2_block.v
// Created: 2020-12-20 13:10:04
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT5_column_2_block
// Source Path: newhope_cambios/FDHT/DFT_2/DFT5-block_IDFT/DFT5-column 2
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT5_column_2_block
          (clk,
           reset_x,
           enb,
           in1_re,
           in1_im,
           in2_re,
           in2_im,
           in3_re,
           in3_im,
           in4_re,
           in4_im,
           in5_re,
           in5_im,
           alpha0_309017,
           alpha0_809017,
           alpha0_587785,
           alpha0_951056,
           out1_re,
           out1_im,
           out2_re,
           out2_im,
           out3_re,
           out3_im,
           out4_re,
           out4_im,
           out5_re,
           out5_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] in1_re;  // sfix37_En22
  input   signed [36:0] in1_im;  // sfix37_En22
  input   signed [36:0] in2_re;  // sfix37_En22
  input   signed [36:0] in2_im;  // sfix37_En22
  input   signed [36:0] in3_re;  // sfix37_En22
  input   signed [36:0] in3_im;  // sfix37_En22
  input   signed [36:0] in4_re;  // sfix37_En22
  input   signed [36:0] in4_im;  // sfix37_En22
  input   signed [36:0] in5_re;  // sfix37_En22
  input   signed [36:0] in5_im;  // sfix37_En22
  input   signed [36:0] alpha0_309017;  // sfix37_En22
  input   signed [36:0] alpha0_809017;  // sfix37_En22
  input   signed [36:0] alpha0_587785;  // sfix37_En22
  input   signed [36:0] alpha0_951056;  // sfix37_En22
  output  signed [36:0] out1_re;  // sfix37_En22
  output  signed [36:0] out1_im;  // sfix37_En22
  output  signed [36:0] out2_re;  // sfix37_En22
  output  signed [36:0] out2_im;  // sfix37_En22
  output  signed [36:0] out3_re;  // sfix37_En22
  output  signed [36:0] out3_im;  // sfix37_En22
  output  signed [36:0] out4_re;  // sfix37_En22
  output  signed [36:0] out4_im;  // sfix37_En22
  output  signed [36:0] out5_re;  // sfix37_En22
  output  signed [36:0] out5_im;  // sfix37_En22


  wire signed [36:0] DFT5_1_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_1_out1_im;  // sfix37_En22
  wire signed [36:0] DFT5_2_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_2_out1_im;  // sfix37_En22
  wire signed [36:0] DFT5_3_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_3_out1_im;  // sfix37_En22
  wire signed [36:0] DFT5_4_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_4_out1_im;  // sfix37_En22
  wire signed [36:0] DFT5_5_out1_re;  // sfix37_En22
  wire signed [36:0] DFT5_5_out1_im;  // sfix37_En22


  DFT5_1_block6 u_DFT5_1 (.in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .in3_re(in3_re),  // sfix37_En22
                          .in3_im(in3_im),  // sfix37_En22
                          .in4_re(in4_re),  // sfix37_En22
                          .in4_im(in4_im),  // sfix37_En22
                          .in5_re(in5_re),  // sfix37_En22
                          .in5_im(in5_im),  // sfix37_En22
                          .out1_re(DFT5_1_out1_re),  // sfix37_En22
                          .out1_im(DFT5_1_out1_im)  // sfix37_En22
                          );

  assign out1_re = DFT5_1_out1_re;

  assign out1_im = DFT5_1_out1_im;

  DFT5_2_block6 u_DFT5_2 (.clk(clk),
                          .reset_x(reset_x),
                          .enb(enb),
                          .in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .in3_re(in3_re),  // sfix37_En22
                          .in3_im(in3_im),  // sfix37_En22
                          .in4_re(in4_re),  // sfix37_En22
                          .in4_im(in4_im),  // sfix37_En22
                          .in5_re(in5_re),  // sfix37_En22
                          .in5_im(in5_im),  // sfix37_En22
                          .alpha0_309017(alpha0_309017),  // sfix37_En22
                          .alpha0_809017(alpha0_809017),  // sfix37_En22
                          .alpha0_587785(alpha0_587785),  // sfix37_En22
                          .alpha0_951056(alpha0_951056),  // sfix37_En22
                          .out2_re(DFT5_2_out1_re),  // sfix37_En22
                          .out2_im(DFT5_2_out1_im)  // sfix37_En22
                          );

  assign out2_re = DFT5_2_out1_re;

  assign out2_im = DFT5_2_out1_im;

  DFT5_3_block5 u_DFT5_3 (.clk(clk),
                          .reset_x(reset_x),
                          .enb(enb),
                          .in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .in3_re(in3_re),  // sfix37_En22
                          .in3_im(in3_im),  // sfix37_En22
                          .in4_re(in4_re),  // sfix37_En22
                          .in4_im(in4_im),  // sfix37_En22
                          .in5_re(in5_re),  // sfix37_En22
                          .in5_im(in5_im),  // sfix37_En22
                          .alpha0_309017(alpha0_309017),  // sfix37_En22
                          .alpha0_809017(alpha0_809017),  // sfix37_En22
                          .alpha0_587785(alpha0_587785),  // sfix37_En22
                          .alpha0_951056(alpha0_951056),  // sfix37_En22
                          .out3_re(DFT5_3_out1_re),  // sfix37_En22
                          .out3_im(DFT5_3_out1_im)  // sfix37_En22
                          );

  assign out3_re = DFT5_3_out1_re;

  assign out3_im = DFT5_3_out1_im;

  DFT5_4_block4 u_DFT5_4 (.clk(clk),
                          .reset_x(reset_x),
                          .enb(enb),
                          .in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .in3_re(in3_re),  // sfix37_En22
                          .in3_im(in3_im),  // sfix37_En22
                          .in4_re(in4_re),  // sfix37_En22
                          .in4_im(in4_im),  // sfix37_En22
                          .in5_re(in5_re),  // sfix37_En22
                          .in5_im(in5_im),  // sfix37_En22
                          .alpha0_309017(alpha0_309017),  // sfix37_En22
                          .alpha0_809017(alpha0_809017),  // sfix37_En22
                          .alpha0_587785(alpha0_587785),  // sfix37_En22
                          .alpha0_951056(alpha0_951056),  // sfix37_En22
                          .out4_re(DFT5_4_out1_re),  // sfix37_En22
                          .out4_im(DFT5_4_out1_im)  // sfix37_En22
                          );

  assign out4_re = DFT5_4_out1_re;

  assign out4_im = DFT5_4_out1_im;

  DFT5_5_block4 u_DFT5_5 (.clk(clk),
                          .reset_x(reset_x),
                          .enb(enb),
                          .in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .in3_re(in3_re),  // sfix37_En22
                          .in3_im(in3_im),  // sfix37_En22
                          .in4_re(in4_re),  // sfix37_En22
                          .in4_im(in4_im),  // sfix37_En22
                          .in5_re(in5_re),  // sfix37_En22
                          .in5_im(in5_im),  // sfix37_En22
                          .alpha0_309017(alpha0_309017),  // sfix37_En22
                          .alpha0_809017(alpha0_809017),  // sfix37_En22
                          .alpha0_587785(alpha0_587785),  // sfix37_En22
                          .alpha0_951056(alpha0_951056),  // sfix37_En22
                          .out5_re(DFT5_5_out1_re),  // sfix37_En22
                          .out5_im(DFT5_5_out1_im)  // sfix37_En22
                          );

  assign out5_re = DFT5_5_out1_re;

  assign out5_im = DFT5_5_out1_im;

endmodule  // DFT5_column_2_block
