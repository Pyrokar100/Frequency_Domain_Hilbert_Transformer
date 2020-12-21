// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_Sum_block9.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_Sum_block9
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT5-row 1/DFT5-1/Complex-Sum
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_Sum_block9
          (In1,
           In2,
           Out1_re,
           Out1_im);


  input   signed [36:0] In1;  // sfix37_En22
  input   signed [36:0] In2;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  wire signed [36:0] Complex_to_Real_Imag1_out1;  // sfix37_En22
  wire signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  wire signed [36:0] Complex_to_Real_Imag2_out1;  // sfix37_En22
  wire signed [36:0] Complex_to_Real_Imag2_out2;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22


  assign Complex_to_Real_Imag1_out1 = In1;
  assign Complex_to_Real_Imag1_out2 = 37'sh0000000000;



  assign Complex_to_Real_Imag2_out1 = In2;
  assign Complex_to_Real_Imag2_out2 = 37'sh0000000000;



  assign Sum_out1 = Complex_to_Real_Imag1_out1 + Complex_to_Real_Imag2_out1;



  assign Out1_re = Sum_out1;

  assign Sum1_out1 = Complex_to_Real_Imag1_out2 + Complex_to_Real_Imag2_out2;



  assign Out1_im = Sum1_out1;

endmodule  // Complex_Sum_block9

