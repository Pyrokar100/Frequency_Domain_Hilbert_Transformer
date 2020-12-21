// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_multiplication_block18.v
// Created: 2020-12-20 13:10:02
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_multiplication_block18
// Source Path: newhope_cambios/FDHT/DFT_2/DFT10 - block_2/DFT2-column 2/DFT2-2/Complex-multiplication
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_multiplication_block18
          (clk,
           reset_x,
           enb,
           In1_re,
           In1_im,
           In2,
           Out1_re,
           Out1_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1_re;  // sfix37_En22
  input   signed [36:0] In1_im;  // sfix37_En22
  input   signed [1:0] In2;  // sfix2
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  wire signed [1:0] Complex_to_Real_Imag2_out1;  // sfix2
  wire signed [1:0] Complex_to_Real_Imag2_out2;  // sfix2
  reg signed [1:0] reduced_reg [0:17];  // sfix2 [18]
  wire signed [1:0] reduced_reg_next [0:17];  // sfix2 [18]
  wire signed [1:0] Complex_to_Real_Imag2_out1_1;  // sfix2
  wire signed [38:0] Product_mul_temp;  // sfix39_En22
  wire signed [36:0] Product_out1;  // sfix37_En22
  reg signed [36:0] delayMatch2_reg [0:1];  // sfix37 [2]
  wire signed [36:0] delayMatch2_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Product_out1_1;  // sfix37_En22
  reg signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  wire signed [1:0] Constant_out1;  // sfix2
  wire signed [3:0] Product4_mul_temp;  // sfix4
  wire signed [36:0] Product4_out1;  // sfix37_En22
  reg signed [36:0] HwModeRegister1_reg [0:18];  // sfix37 [19]
  wire signed [36:0] HwModeRegister1_reg_next [0:18];  // sfix37_En22 [19]
  wire signed [36:0] Product4_out1_1;  // sfix37_En22
  wire signed [73:0] Product1_mul_temp;  // sfix74_En44
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  reg signed [1:0] delayMatch3_reg [0:17];  // sfix2 [18]
  wire signed [1:0] delayMatch3_reg_next [0:17];  // sfix2 [18]
  wire signed [1:0] Complex_to_Real_Imag2_out2_1;  // sfix2
  wire signed [38:0] Product2_mul_temp;  // sfix39_En22
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [38:0] Product3_mul_temp;  // sfix39_En22
  wire signed [36:0] Product3_out1;  // sfix37_En22
  reg signed [36:0] Product3_out1_1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22
  reg signed [36:0] Sum1_out1_1;  // sfix37_En22


  assign Complex_to_Real_Imag2_out1 = In2;
  assign Complex_to_Real_Imag2_out2 = 2'sb00;



  always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        reduced_reg[0] <= 2'sb00;
        reduced_reg[1] <= 2'sb00;
        reduced_reg[2] <= 2'sb00;
        reduced_reg[3] <= 2'sb00;
        reduced_reg[4] <= 2'sb00;
        reduced_reg[5] <= 2'sb00;
        reduced_reg[6] <= 2'sb00;
        reduced_reg[7] <= 2'sb00;
        reduced_reg[8] <= 2'sb00;
        reduced_reg[9] <= 2'sb00;
        reduced_reg[10] <= 2'sb00;
        reduced_reg[11] <= 2'sb00;
        reduced_reg[12] <= 2'sb00;
        reduced_reg[13] <= 2'sb00;
        reduced_reg[14] <= 2'sb00;
        reduced_reg[15] <= 2'sb00;
        reduced_reg[16] <= 2'sb00;
        reduced_reg[17] <= 2'sb00;
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
          reduced_reg[15] <= reduced_reg_next[15];
          reduced_reg[16] <= reduced_reg_next[16];
          reduced_reg[17] <= reduced_reg_next[17];
        end
      end
    end

  assign Complex_to_Real_Imag2_out1_1 = reduced_reg[17];
  assign reduced_reg_next[0] = Complex_to_Real_Imag2_out1;
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
  assign reduced_reg_next[15] = reduced_reg[14];
  assign reduced_reg_next[16] = reduced_reg[15];
  assign reduced_reg_next[17] = reduced_reg[16];



  assign Product_mul_temp = In1_re * Complex_to_Real_Imag2_out1_1;
  assign Product_out1 = Product_mul_temp[36:0];



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
    begin : HwModeRegister_process
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



  assign Product4_mul_temp = Complex_to_Real_Imag2_out2 * Constant_out1;
  assign Product4_out1 = {{11{Product4_mul_temp[3]}}, {Product4_mul_temp, 22'b0000000000000000000000}};



  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset_x == 1'b1) begin
        HwModeRegister1_reg[0] <= 37'sh0000000000;
        HwModeRegister1_reg[1] <= 37'sh0000000000;
        HwModeRegister1_reg[2] <= 37'sh0000000000;
        HwModeRegister1_reg[3] <= 37'sh0000000000;
        HwModeRegister1_reg[4] <= 37'sh0000000000;
        HwModeRegister1_reg[5] <= 37'sh0000000000;
        HwModeRegister1_reg[6] <= 37'sh0000000000;
        HwModeRegister1_reg[7] <= 37'sh0000000000;
        HwModeRegister1_reg[8] <= 37'sh0000000000;
        HwModeRegister1_reg[9] <= 37'sh0000000000;
        HwModeRegister1_reg[10] <= 37'sh0000000000;
        HwModeRegister1_reg[11] <= 37'sh0000000000;
        HwModeRegister1_reg[12] <= 37'sh0000000000;
        HwModeRegister1_reg[13] <= 37'sh0000000000;
        HwModeRegister1_reg[14] <= 37'sh0000000000;
        HwModeRegister1_reg[15] <= 37'sh0000000000;
        HwModeRegister1_reg[16] <= 37'sh0000000000;
        HwModeRegister1_reg[17] <= 37'sh0000000000;
        HwModeRegister1_reg[18] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          HwModeRegister1_reg[0] <= HwModeRegister1_reg_next[0];
          HwModeRegister1_reg[1] <= HwModeRegister1_reg_next[1];
          HwModeRegister1_reg[2] <= HwModeRegister1_reg_next[2];
          HwModeRegister1_reg[3] <= HwModeRegister1_reg_next[3];
          HwModeRegister1_reg[4] <= HwModeRegister1_reg_next[4];
          HwModeRegister1_reg[5] <= HwModeRegister1_reg_next[5];
          HwModeRegister1_reg[6] <= HwModeRegister1_reg_next[6];
          HwModeRegister1_reg[7] <= HwModeRegister1_reg_next[7];
          HwModeRegister1_reg[8] <= HwModeRegister1_reg_next[8];
          HwModeRegister1_reg[9] <= HwModeRegister1_reg_next[9];
          HwModeRegister1_reg[10] <= HwModeRegister1_reg_next[10];
          HwModeRegister1_reg[11] <= HwModeRegister1_reg_next[11];
          HwModeRegister1_reg[12] <= HwModeRegister1_reg_next[12];
          HwModeRegister1_reg[13] <= HwModeRegister1_reg_next[13];
          HwModeRegister1_reg[14] <= HwModeRegister1_reg_next[14];
          HwModeRegister1_reg[15] <= HwModeRegister1_reg_next[15];
          HwModeRegister1_reg[16] <= HwModeRegister1_reg_next[16];
          HwModeRegister1_reg[17] <= HwModeRegister1_reg_next[17];
          HwModeRegister1_reg[18] <= HwModeRegister1_reg_next[18];
        end
      end
    end

  assign Product4_out1_1 = HwModeRegister1_reg[18];
  assign HwModeRegister1_reg_next[0] = Product4_out1;
  assign HwModeRegister1_reg_next[1] = HwModeRegister1_reg[0];
  assign HwModeRegister1_reg_next[2] = HwModeRegister1_reg[1];
  assign HwModeRegister1_reg_next[3] = HwModeRegister1_reg[2];
  assign HwModeRegister1_reg_next[4] = HwModeRegister1_reg[3];
  assign HwModeRegister1_reg_next[5] = HwModeRegister1_reg[4];
  assign HwModeRegister1_reg_next[6] = HwModeRegister1_reg[5];
  assign HwModeRegister1_reg_next[7] = HwModeRegister1_reg[6];
  assign HwModeRegister1_reg_next[8] = HwModeRegister1_reg[7];
  assign HwModeRegister1_reg_next[9] = HwModeRegister1_reg[8];
  assign HwModeRegister1_reg_next[10] = HwModeRegister1_reg[9];
  assign HwModeRegister1_reg_next[11] = HwModeRegister1_reg[10];
  assign HwModeRegister1_reg_next[12] = HwModeRegister1_reg[11];
  assign HwModeRegister1_reg_next[13] = HwModeRegister1_reg[12];
  assign HwModeRegister1_reg_next[14] = HwModeRegister1_reg[13];
  assign HwModeRegister1_reg_next[15] = HwModeRegister1_reg[14];
  assign HwModeRegister1_reg_next[16] = HwModeRegister1_reg[15];
  assign HwModeRegister1_reg_next[17] = HwModeRegister1_reg[16];
  assign HwModeRegister1_reg_next[18] = HwModeRegister1_reg[17];



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
    begin : delayMatch3_process
      if (reset_x == 1'b1) begin
        delayMatch3_reg[0] <= 2'sb00;
        delayMatch3_reg[1] <= 2'sb00;
        delayMatch3_reg[2] <= 2'sb00;
        delayMatch3_reg[3] <= 2'sb00;
        delayMatch3_reg[4] <= 2'sb00;
        delayMatch3_reg[5] <= 2'sb00;
        delayMatch3_reg[6] <= 2'sb00;
        delayMatch3_reg[7] <= 2'sb00;
        delayMatch3_reg[8] <= 2'sb00;
        delayMatch3_reg[9] <= 2'sb00;
        delayMatch3_reg[10] <= 2'sb00;
        delayMatch3_reg[11] <= 2'sb00;
        delayMatch3_reg[12] <= 2'sb00;
        delayMatch3_reg[13] <= 2'sb00;
        delayMatch3_reg[14] <= 2'sb00;
        delayMatch3_reg[15] <= 2'sb00;
        delayMatch3_reg[16] <= 2'sb00;
        delayMatch3_reg[17] <= 2'sb00;
      end
      else begin
        if (enb) begin
          delayMatch3_reg[0] <= delayMatch3_reg_next[0];
          delayMatch3_reg[1] <= delayMatch3_reg_next[1];
          delayMatch3_reg[2] <= delayMatch3_reg_next[2];
          delayMatch3_reg[3] <= delayMatch3_reg_next[3];
          delayMatch3_reg[4] <= delayMatch3_reg_next[4];
          delayMatch3_reg[5] <= delayMatch3_reg_next[5];
          delayMatch3_reg[6] <= delayMatch3_reg_next[6];
          delayMatch3_reg[7] <= delayMatch3_reg_next[7];
          delayMatch3_reg[8] <= delayMatch3_reg_next[8];
          delayMatch3_reg[9] <= delayMatch3_reg_next[9];
          delayMatch3_reg[10] <= delayMatch3_reg_next[10];
          delayMatch3_reg[11] <= delayMatch3_reg_next[11];
          delayMatch3_reg[12] <= delayMatch3_reg_next[12];
          delayMatch3_reg[13] <= delayMatch3_reg_next[13];
          delayMatch3_reg[14] <= delayMatch3_reg_next[14];
          delayMatch3_reg[15] <= delayMatch3_reg_next[15];
          delayMatch3_reg[16] <= delayMatch3_reg_next[16];
          delayMatch3_reg[17] <= delayMatch3_reg_next[17];
        end
      end
    end

  assign Complex_to_Real_Imag2_out2_1 = delayMatch3_reg[17];
  assign delayMatch3_reg_next[0] = Complex_to_Real_Imag2_out2;
  assign delayMatch3_reg_next[1] = delayMatch3_reg[0];
  assign delayMatch3_reg_next[2] = delayMatch3_reg[1];
  assign delayMatch3_reg_next[3] = delayMatch3_reg[2];
  assign delayMatch3_reg_next[4] = delayMatch3_reg[3];
  assign delayMatch3_reg_next[5] = delayMatch3_reg[4];
  assign delayMatch3_reg_next[6] = delayMatch3_reg[5];
  assign delayMatch3_reg_next[7] = delayMatch3_reg[6];
  assign delayMatch3_reg_next[8] = delayMatch3_reg[7];
  assign delayMatch3_reg_next[9] = delayMatch3_reg[8];
  assign delayMatch3_reg_next[10] = delayMatch3_reg[9];
  assign delayMatch3_reg_next[11] = delayMatch3_reg[10];
  assign delayMatch3_reg_next[12] = delayMatch3_reg[11];
  assign delayMatch3_reg_next[13] = delayMatch3_reg[12];
  assign delayMatch3_reg_next[14] = delayMatch3_reg[13];
  assign delayMatch3_reg_next[15] = delayMatch3_reg[14];
  assign delayMatch3_reg_next[16] = delayMatch3_reg[15];
  assign delayMatch3_reg_next[17] = delayMatch3_reg[16];



  assign Product2_mul_temp = In1_re * Complex_to_Real_Imag2_out2_1;
  assign Product2_out1 = Product2_mul_temp[36:0];



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



  assign Product3_mul_temp = In1_im * Complex_to_Real_Imag2_out1_1;
  assign Product3_out1 = Product3_mul_temp[36:0];



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

endmodule  // Complex_multiplication_block18

