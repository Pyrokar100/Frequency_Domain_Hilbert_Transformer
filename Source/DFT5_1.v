// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT5_1.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT5_1
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT5-row 1/DFT5-1
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT5_1
          (in1,
           in2,
           in3,
           in4,
           in5,
           out1_re,
           out1_im);


  input   signed [36:0] in1;  // sfix37_En22
  input   signed [36:0] in2;  // sfix37_En22
  input   signed [36:0] in3;  // sfix37_En22
  input   signed [36:0] in4;  // sfix37_En22
  input   signed [36:0] in5;  // sfix37_En22
  output  signed [36:0] out1_re;  // sfix37_En22
  output  signed [36:0] out1_im;  // sfix37_En22


  wire signed [36:0] Complex_Sum_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum1_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum1_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum3_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum3_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum2_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum2_out1_im;  // sfix37_En22


  Complex_Sum_block9 u_Complex_Sum (.In1(in1),  // sfix37_En22
                                    .In2(in2),  // sfix37_En22
                                    .Out1_re(Complex_Sum_out1_re),  // sfix37_En22
                                    .Out1_im(Complex_Sum_out1_im)  // sfix37_En22
                                    );

  Complex_Sum1 u_Complex_Sum1 (.In1(in3),  // sfix37_En22
                               .In2(in4),  // sfix37_En22
                               .Out1_re(Complex_Sum1_out1_re),  // sfix37_En22
                               .Out1_im(Complex_Sum1_out1_im)  // sfix37_En22
                               );

  Complex_Sum3 u_Complex_Sum3 (.In1_re(Complex_Sum1_out1_re),  // sfix37_En22
                               .In1_im(Complex_Sum1_out1_im),  // sfix37_En22
                               .In2(in5),  // sfix37_En22
                               .Out1_re(Complex_Sum3_out1_re),  // sfix37_En22
                               .Out1_im(Complex_Sum3_out1_im)  // sfix37_En22
                               );

  Complex_Sum2 u_Complex_Sum2 (.In1_re(Complex_Sum_out1_re),  // sfix37_En22
                               .In1_im(Complex_Sum_out1_im),  // sfix37_En22
                               .In2_re(Complex_Sum3_out1_re),  // sfix37_En22
                               .In2_im(Complex_Sum3_out1_im),  // sfix37_En22
                               .Out1_re(Complex_Sum2_out1_re),  // sfix37_En22
                               .Out1_im(Complex_Sum2_out1_im)  // sfix37_En22
                               );

  assign out1_re = Complex_Sum2_out1_re;

  assign out1_im = Complex_Sum2_out1_im;

endmodule  // DFT5_1

