// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_Sum1_block2.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_Sum1_block2
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT5-row 1/DFT5-4/Complex-Sum1
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_Sum1_block2
          (clk,
           reset_x,
           enb,
           In1_re,
           In1_im,
           In2_re,
           In2_im,
           Out1_re,
           Out1_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1_re;  // sfix37_En22
  input   signed [36:0] In1_im;  // sfix37_En22
  input   signed [36:0] In2_re;  // sfix37_En22
  input   signed [36:0] In2_im;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  reg signed [36:0] Complex_to_Real_Imag1_out1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  reg signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22


  always @(posedge clk)
    begin : delayMatch_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out1 <= In1_re;
        end
      end
    end



  assign Sum_out1 = Complex_to_Real_Imag1_out1 + In2_re;



  assign Out1_re = Sum_out1;

  always @(posedge clk)
    begin : delayMatch1_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out2 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out2 <= In1_im;
        end
      end
    end



  assign Sum1_out1 = Complex_to_Real_Imag1_out2 + In2_im;



  assign Out1_im = Sum1_out1;

endmodule  // Complex_Sum1_block2

