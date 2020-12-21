// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_Sum_block41.v
// Created: 2020-12-20 13:10:03
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_Sum_block41
// Source Path: newhope_cambios/FDHT/DFT_2/DFT10 - block_2/DFT5-row 2/DFT5-3/Complex-Sum
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_Sum_block41
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


  reg signed [36:0] delayMatch_reg [0:3];  // sfix37 [4]
  wire signed [36:0] delayMatch_reg_next [0:3];  // sfix37_En22 [4]
  wire signed [36:0] Complex_to_Real_Imag1_out1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  reg signed [36:0] delayMatch1_reg [0:3];  // sfix37 [4]
  wire signed [36:0] delayMatch1_reg_next [0:3];  // sfix37_En22 [4]
  wire signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22


  always @(posedge clk)
    begin : delayMatch_process
      if (reset_x == 1'b1) begin
        delayMatch_reg[0] <= 37'sh0000000000;
        delayMatch_reg[1] <= 37'sh0000000000;
        delayMatch_reg[2] <= 37'sh0000000000;
        delayMatch_reg[3] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
          delayMatch_reg[3] <= delayMatch_reg_next[3];
        end
      end
    end

  assign Complex_to_Real_Imag1_out1 = delayMatch_reg[3];
  assign delayMatch_reg_next[0] = In1_re;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];
  assign delayMatch_reg_next[3] = delayMatch_reg[2];



  assign Sum_out1 = Complex_to_Real_Imag1_out1 + In2_re;



  assign Out1_re = Sum_out1;

  always @(posedge clk)
    begin : delayMatch1_process
      if (reset_x == 1'b1) begin
        delayMatch1_reg[0] <= 37'sh0000000000;
        delayMatch1_reg[1] <= 37'sh0000000000;
        delayMatch1_reg[2] <= 37'sh0000000000;
        delayMatch1_reg[3] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
          delayMatch1_reg[3] <= delayMatch1_reg_next[3];
        end
      end
    end

  assign Complex_to_Real_Imag1_out2 = delayMatch1_reg[3];
  assign delayMatch1_reg_next[0] = In1_im;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];
  assign delayMatch1_reg_next[3] = delayMatch1_reg[2];



  assign Sum1_out1 = Complex_to_Real_Imag1_out2 + In2_im;



  assign Out1_im = Sum1_out1;

endmodule  // Complex_Sum_block41

