// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_multiplication_block5.v
// Created: 2020-12-20 13:10:01
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_multiplication_block5
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT5-row 1/DFT5-3/Complex-multiplication
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_multiplication_block5
          (clk,
           reset_x,
           enb,
           In1,
           In2_real,
           In2_imag,
           Out1_re,
           Out1_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1;  // sfix37_En22
  input   signed [36:0] In2_real;  // sfix37_En22
  input   signed [36:0] In2_imag;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  wire signed [36:0] Complex_to_Real_Imag1_out1;  // sfix37_En22
  wire signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  reg signed [36:0] reduced_reg [0:1];  // sfix37 [2]
  wire signed [36:0] reduced_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Complex_to_Real_Imag1_out1_1;  // sfix37_En22
  reg signed [36:0] In2_real_1;  // sfix37_En22
  wire signed [73:0] Product_mul_temp;  // sfix74_En44
  wire signed [36:0] Product_out1;  // sfix37_En22
  reg signed [36:0] delayMatch2_reg [0:1];  // sfix37 [2]
  wire signed [36:0] delayMatch2_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Product_out1_1;  // sfix37_En22
  reg signed [36:0] reduced_reg_1 [0:1];  // sfix37 [2]
  wire signed [36:0] reduced_reg_next_1 [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Complex_to_Real_Imag1_out2_1;  // sfix37_En22
  reg signed [36:0] Complex_to_Real_Imag1_out2_2;  // sfix37_En22
  wire signed [1:0] Constant_out1;  // sfix2
  wire signed [38:0] Product4_mul_temp;  // sfix39_En22
  wire signed [36:0] Product4_out1;  // sfix37_En22
  reg signed [36:0] HwModeRegister3_reg [0:1];  // sfix37 [2]
  wire signed [36:0] HwModeRegister3_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Product4_out1_1;  // sfix37_En22
  wire signed [73:0] Product1_mul_temp;  // sfix74_En44
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  reg signed [36:0] In2_imag_1;  // sfix37_En22
  wire signed [73:0] Product2_mul_temp;  // sfix74_En44
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [73:0] Product3_mul_temp;  // sfix74_En44
  wire signed [36:0] Product3_out1;  // sfix37_En22
  reg signed [36:0] Product3_out1_1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22
  reg signed [36:0] Sum1_out1_1;  // sfix37_En22


  assign Complex_to_Real_Imag1_out1 = In1;
  assign Complex_to_Real_Imag1_out2 = 37'sh0000000000;



  always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        reduced_reg[0] <= 37'sh0000000000;
        reduced_reg[1] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          reduced_reg[0] <= reduced_reg_next[0];
          reduced_reg[1] <= reduced_reg_next[1];
        end
      end
    end

  assign Complex_to_Real_Imag1_out1_1 = reduced_reg[1];
  assign reduced_reg_next[0] = Complex_to_Real_Imag1_out1;
  assign reduced_reg_next[1] = reduced_reg[0];



  always @(posedge clk)
    begin : reduced_1_process
      if (reset_x == 1'b1) begin
        In2_real_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          In2_real_1 <= In2_real;
        end
      end
    end



  assign Product_mul_temp = Complex_to_Real_Imag1_out1_1 * In2_real_1;
  assign Product_out1 = Product_mul_temp[58:22];



  always @(posedge clk)
    begin : delayMatch2_process
      if (reset_x == 1'b1) begin
        delayMatch2_reg[0] <= 37'sh0000000000;
        delayMatch2_reg[1] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          delayMatch2_reg[0] <= delayMatch2_reg_next[0];
          delayMatch2_reg[1] <= delayMatch2_reg_next[1];
        end
      end
    end

  assign Product_out1_1 = delayMatch2_reg[1];
  assign delayMatch2_reg_next[0] = Product_out1;
  assign delayMatch2_reg_next[1] = delayMatch2_reg[0];



  always @(posedge clk)
    begin : reduced_2_process
      if (reset_x == 1'b1) begin
        reduced_reg_1[0] <= 37'sh0000000000;
        reduced_reg_1[1] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          reduced_reg_1[0] <= reduced_reg_next_1[0];
          reduced_reg_1[1] <= reduced_reg_next_1[1];
        end
      end
    end

  assign Complex_to_Real_Imag1_out2_1 = reduced_reg_1[1];
  assign reduced_reg_next_1[0] = Complex_to_Real_Imag1_out2;
  assign reduced_reg_next_1[1] = reduced_reg_1[0];



  always @(posedge clk)
    begin : reduced_3_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out2_2 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out2_2 <= Complex_to_Real_Imag1_out2_1;
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
      end
      else begin
        if (enb) begin
          HwModeRegister3_reg[0] <= HwModeRegister3_reg_next[0];
          HwModeRegister3_reg[1] <= HwModeRegister3_reg_next[1];
        end
      end
    end

  assign Product4_out1_1 = HwModeRegister3_reg[1];
  assign HwModeRegister3_reg_next[0] = Product4_out1;
  assign HwModeRegister3_reg_next[1] = HwModeRegister3_reg[0];



  assign Product1_mul_temp = Complex_to_Real_Imag1_out2_2 * Product4_out1_1;
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
        In2_imag_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          In2_imag_1 <= In2_imag;
        end
      end
    end



  assign Product2_mul_temp = Complex_to_Real_Imag1_out1_1 * In2_imag_1;
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



  assign Product3_mul_temp = Complex_to_Real_Imag1_out2_1 * In2_real_1;
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



  always @(posedge clk)
    begin : delayMatch5_process
      if (reset_x == 1'b1) begin
        Sum1_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Sum1_out1_1 <= Sum1_out1;
        end
      end
    end



  assign Out1_im = Sum1_out1_1;

endmodule  // Complex_multiplication_block5

