// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_Sum1_block6.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_Sum1_block6
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT5-row 2/DFT5-3/Complex-Sum1
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_Sum1_block6
          (In1_re,
           In1_im,
           In2_re,
           In2_im,
           Out1_re,
           Out1_im);


  input   signed [36:0] In1_re;  // sfix37_En22
  input   signed [36:0] In1_im;  // sfix37_En22
  input   signed [36:0] In2_re;  // sfix37_En22
  input   signed [36:0] In2_im;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  wire signed [36:0] Sum_out1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22


  assign Sum_out1 = In1_re + In2_re;



  assign Out1_re = Sum_out1;

  assign Sum1_out1 = In1_im + In2_im;



  assign Out1_im = Sum1_out1;

endmodule  // Complex_Sum1_block6

