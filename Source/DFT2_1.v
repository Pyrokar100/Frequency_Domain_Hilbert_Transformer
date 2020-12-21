// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT2_1.v
// Created: 2020-12-20 13:10:00
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT2_1
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT2-column 1/DFT2-1
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT2_1
          (in1_re,
           in1_im,
           in2_re,
           in2_im,
           out1_re,
           out1_im);


  input   signed [36:0] in1_re;  // sfix37_En22
  input   signed [36:0] in1_im;  // sfix37_En22
  input   signed [36:0] in2_re;  // sfix37_En22
  input   signed [36:0] in2_im;  // sfix37_En22
  output  signed [36:0] out1_re;  // sfix37_En22
  output  signed [36:0] out1_im;  // sfix37_En22


  wire signed [36:0] Complex_Sum_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum_out1_im;  // sfix37_En22


  Complex_Sum u_Complex_Sum (.In1_re(in1_re),  // sfix37_En22
                             .In1_im(in1_im),  // sfix37_En22
                             .In2_re(in2_re),  // sfix37_En22
                             .In2_im(in2_im),  // sfix37_En22
                             .Out1_re(Complex_Sum_out1_re),  // sfix37_En22
                             .Out1_im(Complex_Sum_out1_im)  // sfix37_En22
                             );

  assign out1_re = Complex_Sum_out1_re;

  assign out1_im = Complex_Sum_out1_im;

endmodule  // DFT2_1
