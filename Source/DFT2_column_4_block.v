// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT2_column_4_block.v
// Created: 2020-12-20 13:10:03
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT2_column_4_block
// Source Path: newhope_cambios/FDHT/DFT_2/DFT10 - block_2/DFT2-column 4
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT2_column_4_block
          (clk,
           reset_x,
           enb,
           in1_re,
           in1_im,
           in2_re,
           in2_im,
           out1_re,
           out1_im,
           out2_re,
           out2_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] in1_re;  // sfix37_En22
  input   signed [36:0] in1_im;  // sfix37_En22
  input   signed [36:0] in2_re;  // sfix37_En22
  input   signed [36:0] in2_im;  // sfix37_En22
  output  signed [36:0] out1_re;  // sfix37_En22
  output  signed [36:0] out1_im;  // sfix37_En22
  output  signed [36:0] out2_re;  // sfix37_En22
  output  signed [36:0] out2_im;  // sfix37_En22


  wire signed [36:0] DFT2_1_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_1_out1_im;  // sfix37_En22
  wire signed [36:0] DFT2_2_out1_re;  // sfix37_En22
  wire signed [36:0] DFT2_2_out1_im;  // sfix37_En22


  DFT2_1_block7 u_DFT2_1 (.clk(clk),
                          .reset_x(reset_x),
                          .enb(enb),
                          .in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .out1_re(DFT2_1_out1_re),  // sfix37_En22
                          .out1_im(DFT2_1_out1_im)  // sfix37_En22
                          );

  assign out1_re = DFT2_1_out1_re;

  assign out1_im = DFT2_1_out1_im;

  DFT2_2_block7 u_DFT2_2 (.clk(clk),
                          .reset_x(reset_x),
                          .enb(enb),
                          .in1_re(in1_re),  // sfix37_En22
                          .in1_im(in1_im),  // sfix37_En22
                          .in2_re(in2_re),  // sfix37_En22
                          .in2_im(in2_im),  // sfix37_En22
                          .out2_re(DFT2_2_out1_re),  // sfix37_En22
                          .out2_im(DFT2_2_out1_im)  // sfix37_En22
                          );

  assign out2_re = DFT2_2_out1_re;

  assign out2_im = DFT2_2_out1_im;

endmodule  // DFT2_column_4_block
