// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_multiplication_block26.v
// Created: 2020-12-20 13:10:03
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_multiplication_block26
// Source Path: newhope_cambios/FDHT/DFT_2/DFT10 - block_2/DFT5-row 2/DFT5-2/Complex-multiplication
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_multiplication_block26
          (clk,
           reset_x,
           enb,
           In1_re,
           In1_im,
           In2_real,
           In2_imag,
           Out1_re,
           Out1_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1_re;  // sfix37_En22
  input   signed [36:0] In1_im;  // sfix37_En22
  input   signed [36:0] In2_real;  // sfix37_En22
  input   signed [36:0] In2_imag;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  reg signed [36:0] Complex_to_Real_Imag1_out1;  // sfix37_En22
  reg signed [36:0] reduced_reg [0:14];  // sfix37 [15]
  wire signed [36:0] reduced_reg_next [0:14];  // sfix37_En22 [15]
  wire signed [36:0] In2_real_1;  // sfix37_En22
  wire signed [73:0] Product_mul_temp;  // sfix74_En44
  wire signed [36:0] Product_out1;  // sfix37_En22
  reg signed [36:0] Product_out1_1;  // sfix37_En22
  reg signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  wire signed [1:0] Constant_out1;  // sfix2
  wire signed [38:0] Product4_mul_temp;  // sfix39_En22
  wire signed [36:0] Product4_out1;  // sfix37_En22
  reg signed [36:0] HwModeRegister3_reg [0:13];  // sfix37 [14]
  wire signed [36:0] HwModeRegister3_reg_next [0:13];  // sfix37_En22 [14]
  wire signed [36:0] Product4_out1_1;  // sfix37_En22
  wire signed [73:0] Product1_mul_temp;  // sfix74_En44
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  reg signed [36:0] HwModeRegister5_reg [0:13];  // sfix37 [14]
  wire signed [36:0] HwModeRegister5_reg_next [0:13];  // sfix37_En22 [14]
  wire signed [36:0] In2_imag_1;  // sfix37_En22
  wire signed [73:0] Product2_mul_temp;  // sfix74_En44
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [73:0] Product3_mul_temp;  // sfix74_En44
  wire signed [36:0] Product3_out1;  // sfix37_En22
  reg signed [36:0] Product3_out1_1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22


  always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out1 <= In1_re;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_1_process
      if (reset_x == 1'b1) begin
        reduced_reg[0] <= 37'sh0000000000;
        reduced_reg[1] <= 37'sh0000000000;
        reduced_reg[2] <= 37'sh0000000000;
        reduced_reg[3] <= 37'sh0000000000;
        reduced_reg[4] <= 37'sh0000000000;
        reduced_reg[5] <= 37'sh0000000000;
        reduced_reg[6] <= 37'sh0000000000;
        reduced_reg[7] <= 37'sh0000000000;
        reduced_reg[8] <= 37'sh0000000000;
        reduced_reg[9] <= 37'sh0000000000;
        reduced_reg[10] <= 37'sh0000000000;
        reduced_reg[11] <= 37'sh0000000000;
        reduced_reg[12] <= 37'sh0000000000;
        reduced_reg[13] <= 37'sh0000000000;
        reduced_reg[14] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          reduced_reg[0] <= reduced_reg_next[0];
          reduced_reg[1] <= reduced_reg_next[1];
          reduced_reg[2] <= reduced_reg_next[2];
          reduced_reg[3] <= reduced_reg_next[3];
          reduced_reg[4] <= reduced_reg_next[4];
          reduced_reg[5] <= reduced_reg_next[5];
          reduced_reg[6] <= reduced_reg_next[6];
          reduced_reg[7] <= reduced_reg_next[7];
          reduced_reg[8] <= reduced_reg_next[8];
          reduced_reg[9] <= reduced_reg_next[9];
          reduced_reg[10] <= reduced_reg_next[10];
          reduced_reg[11] <= reduced_reg_next[11];
          reduced_reg[12] <= reduced_reg_next[12];
          reduced_reg[13] <= reduced_reg_next[13];
          reduced_reg[14] <= reduced_reg_next[14];
        end
      end
    end

  assign In2_real_1 = reduced_reg[14];
  assign reduced_reg_next[0] = In2_real;
  assign reduced_reg_next[1] = reduced_reg[0];
  assign reduced_reg_next[2] = reduced_reg[1];
  assign reduced_reg_next[3] = reduced_reg[2];
  assign reduced_reg_next[4] = reduced_reg[3];
  assign reduced_reg_next[5] = reduced_reg[4];
  assign reduced_reg_next[6] = reduced_reg[5];
  assign reduced_reg_next[7] = reduced_reg[6];
  assign reduced_reg_next[8] = reduced_reg[7];
  assign reduced_reg_next[9] = reduced_reg[8];
  assign reduced_reg_next[10] = reduced_reg[9];
  assign reduced_reg_next[11] = reduced_reg[10];
  assign reduced_reg_next[12] = reduced_reg[11];
  assign reduced_reg_next[13] = reduced_reg[12];
  assign reduced_reg_next[14] = reduced_reg[13];



  assign Product_mul_temp = Complex_to_Real_Imag1_out1 * In2_real_1;
  assign Product_out1 = Product_mul_temp[58:22];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset_x == 1'b1) begin
        Product_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product_out1_1 <= Product_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_2_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out2 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out2 <= In1_im;
        end
      end
    end



  assign Constant_out1 = 2'sb11;



  assign Product4_mul_temp = In2_imag * Constant_out1;
  assign Product4_out1 = Product4_mul_temp[36:0];



  always @(posedge clk)
    begin : HwModeRegister3_process
      if (reset_x == 1'b1) begin
        HwModeRegister3_reg[0] <= 37'sh0000000000;
        HwModeRegister3_reg[1] <= 37'sh0000000000;
        HwModeRegister3_reg[2] <= 37'sh0000000000;
        HwModeRegister3_reg[3] <= 37'sh0000000000;
        HwModeRegister3_reg[4] <= 37'sh0000000000;
        HwModeRegister3_reg[5] <= 37'sh0000000000;
        HwModeRegister3_reg[6] <= 37'sh0000000000;
        HwModeRegister3_reg[7] <= 37'sh0000000000;
        HwModeRegister3_reg[8] <= 37'sh0000000000;
        HwModeRegister3_reg[9] <= 37'sh0000000000;
        HwModeRegister3_reg[10] <= 37'sh0000000000;
        HwModeRegister3_reg[11] <= 37'sh0000000000;
        HwModeRegister3_reg[12] <= 37'sh0000000000;
        HwModeRegister3_reg[13] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          HwModeRegister3_reg[0] <= HwModeRegister3_reg_next[0];
          HwModeRegister3_reg[1] <= HwModeRegister3_reg_next[1];
          HwModeRegister3_reg[2] <= HwModeRegister3_reg_next[2];
          HwModeRegister3_reg[3] <= HwModeRegister3_reg_next[3];
          HwModeRegister3_reg[4] <= HwModeRegister3_reg_next[4];
          HwModeRegister3_reg[5] <= HwModeRegister3_reg_next[5];
          HwModeRegister3_reg[6] <= HwModeRegister3_reg_next[6];
          HwModeRegister3_reg[7] <= HwModeRegister3_reg_next[7];
          HwModeRegister3_reg[8] <= HwModeRegister3_reg_next[8];
          HwModeRegister3_reg[9] <= HwModeRegister3_reg_next[9];
          HwModeRegister3_reg[10] <= HwModeRegister3_reg_next[10];
          HwModeRegister3_reg[11] <= HwModeRegister3_reg_next[11];
          HwModeRegister3_reg[12] <= HwModeRegister3_reg_next[12];
          HwModeRegister3_reg[13] <= HwModeRegister3_reg_next[13];
        end
      end
    end

  assign Product4_out1_1 = HwModeRegister3_reg[13];
  assign HwModeRegister3_reg_next[0] = Product4_out1;
  assign HwModeRegister3_reg_next[1] = HwModeRegister3_reg[0];
  assign HwModeRegister3_reg_next[2] = HwModeRegister3_reg[1];
  assign HwModeRegister3_reg_next[3] = HwModeRegister3_reg[2];
  assign HwModeRegister3_reg_next[4] = HwModeRegister3_reg[3];
  assign HwModeRegister3_reg_next[5] = HwModeRegister3_reg[4];
  assign HwModeRegister3_reg_next[6] = HwModeRegister3_reg[5];
  assign HwModeRegister3_reg_next[7] = HwModeRegister3_reg[6];
  assign HwModeRegister3_reg_next[8] = HwModeRegister3_reg[7];
  assign HwModeRegister3_reg_next[9] = HwModeRegister3_reg[8];
  assign HwModeRegister3_reg_next[10] = HwModeRegister3_reg[9];
  assign HwModeRegister3_reg_next[11] = HwModeRegister3_reg[10];
  assign HwModeRegister3_reg_next[12] = HwModeRegister3_reg[11];
  assign HwModeRegister3_reg_next[13] = HwModeRegister3_reg[12];



  assign Product1_mul_temp = Complex_to_Real_Imag1_out2 * Product4_out1_1;
  assign Product1_out1 = Product1_mul_temp[58:22];



  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset_x == 1'b1) begin
        Product1_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product1_out1_1 <= Product1_out1;
        end
      end
    end



  assign Sum_out1 = Product_out1_1 + Product1_out1_1;



  assign Out1_re = Sum_out1;

  always @(posedge clk)
    begin : HwModeRegister5_process
      if (reset_x == 1'b1) begin
        HwModeRegister5_reg[0] <= 37'sh0000000000;
        HwModeRegister5_reg[1] <= 37'sh0000000000;
        HwModeRegister5_reg[2] <= 37'sh0000000000;
        HwModeRegister5_reg[3] <= 37'sh0000000000;
        HwModeRegister5_reg[4] <= 37'sh0000000000;
        HwModeRegister5_reg[5] <= 37'sh0000000000;
        HwModeRegister5_reg[6] <= 37'sh0000000000;
        HwModeRegister5_reg[7] <= 37'sh0000000000;
        HwModeRegister5_reg[8] <= 37'sh0000000000;
        HwModeRegister5_reg[9] <= 37'sh0000000000;
        HwModeRegister5_reg[10] <= 37'sh0000000000;
        HwModeRegister5_reg[11] <= 37'sh0000000000;
        HwModeRegister5_reg[12] <= 37'sh0000000000;
        HwModeRegister5_reg[13] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          HwModeRegister5_reg[0] <= HwModeRegister5_reg_next[0];
          HwModeRegister5_reg[1] <= HwModeRegister5_reg_next[1];
          HwModeRegister5_reg[2] <= HwModeRegister5_reg_next[2];
          HwModeRegister5_reg[3] <= HwModeRegister5_reg_next[3];
          HwModeRegister5_reg[4] <= HwModeRegister5_reg_next[4];
          HwModeRegister5_reg[5] <= HwModeRegister5_reg_next[5];
          HwModeRegister5_reg[6] <= HwModeRegister5_reg_next[6];
          HwModeRegister5_reg[7] <= HwModeRegister5_reg_next[7];
          HwModeRegister5_reg[8] <= HwModeRegister5_reg_next[8];
          HwModeRegister5_reg[9] <= HwModeRegister5_reg_next[9];
          HwModeRegister5_reg[10] <= HwModeRegister5_reg_next[10];
          HwModeRegister5_reg[11] <= HwModeRegister5_reg_next[11];
          HwModeRegister5_reg[12] <= HwModeRegister5_reg_next[12];
          HwModeRegister5_reg[13] <= HwModeRegister5_reg_next[13];
        end
      end
    end

  assign In2_imag_1 = HwModeRegister5_reg[13];
  assign HwModeRegister5_reg_next[0] = In2_imag;
  assign HwModeRegister5_reg_next[1] = HwModeRegister5_reg[0];
  assign HwModeRegister5_reg_next[2] = HwModeRegister5_reg[1];
  assign HwModeRegister5_reg_next[3] = HwModeRegister5_reg[2];
  assign HwModeRegister5_reg_next[4] = HwModeRegister5_reg[3];
  assign HwModeRegister5_reg_next[5] = HwModeRegister5_reg[4];
  assign HwModeRegister5_reg_next[6] = HwModeRegister5_reg[5];
  assign HwModeRegister5_reg_next[7] = HwModeRegister5_reg[6];
  assign HwModeRegister5_reg_next[8] = HwModeRegister5_reg[7];
  assign HwModeRegister5_reg_next[9] = HwModeRegister5_reg[8];
  assign HwModeRegister5_reg_next[10] = HwModeRegister5_reg[9];
  assign HwModeRegister5_reg_next[11] = HwModeRegister5_reg[10];
  assign HwModeRegister5_reg_next[12] = HwModeRegister5_reg[11];
  assign HwModeRegister5_reg_next[13] = HwModeRegister5_reg[12];



  assign Product2_mul_temp = Complex_to_Real_Imag1_out1 * In2_imag_1;
  assign Product2_out1 = Product2_mul_temp[58:22];



  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset_x == 1'b1) begin
        Product2_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product2_out1_1 <= Product2_out1;
        end
      end
    end



  assign Product3_mul_temp = Complex_to_Real_Imag1_out2 * In2_real_1;
  assign Product3_out1 = Product3_mul_temp[58:22];



  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset_x == 1'b1) begin
        Product3_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product3_out1_1 <= Product3_out1;
        end
      end
    end



  assign Sum1_out1 = Product2_out1_1 + Product3_out1_1;



  assign Out1_im = Sum1_out1;

endmodule  // Complex_multiplication_block26

