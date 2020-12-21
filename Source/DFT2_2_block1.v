// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT2_2_block1.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT2_2_block1
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT2-column 3/DFT2-2
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT2_2_block1
          (clk,
           reset_x,
           enb,
           in1_re,
           in1_im,
           in2_re,
           in2_im,
           out2_re,
           out2_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] in1_re;  // sfix37_En22
  input   signed [36:0] in1_im;  // sfix37_En22
  input   signed [36:0] in2_re;  // sfix37_En22
  input   signed [36:0] in2_im;  // sfix37_En22
  output  signed [36:0] out2_re;  // sfix37_En22
  output  signed [36:0] out2_im;  // sfix37_En22


  wire signed [1:0] Constant8_out1;  // sfix2
  wire signed [36:0] Complex_multiplication_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum_out1_im;  // sfix37_En22


  assign Constant8_out1 = 2'sb11;



  Complex_multiplication_block1 u_Complex_multiplication (.clk(clk),
                                                          .reset_x(reset_x),
                                                          .enb(enb),
                                                          .In1_re(in2_re),  // sfix37_En22
                                                          .In1_im(in2_im),  // sfix37_En22
                                                          .In2(Constant8_out1),  // sfix2
                                                          .Out1_re(Complex_multiplication_out1_re),  // sfix37_En22
                                                          .Out1_im(Complex_multiplication_out1_im)  // sfix37_En22
                                                          );

  Complex_Sum_block4 u_Complex_Sum (.clk(clk),
                                    .reset_x(reset_x),
                                    .enb(enb),
                                    .In1_re(in1_re),  // sfix37_En22
                                    .In1_im(in1_im),  // sfix37_En22
                                    .In2_re(Complex_multiplication_out1_re),  // sfix37_En22
                                    .In2_im(Complex_multiplication_out1_im),  // sfix37_En22
                                    .Out1_re(Complex_Sum_out1_re),  // sfix37_En22
                                    .Out1_im(Complex_Sum_out1_im)  // sfix37_En22
                                    );

  assign out2_re = Complex_Sum_out1_re;

  assign out2_im = Complex_Sum_out1_im;

endmodule  // DFT2_2_block1

