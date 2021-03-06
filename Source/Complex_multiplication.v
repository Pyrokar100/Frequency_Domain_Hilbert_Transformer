// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_multiplication.v
// Created: 2020-12-20 13:10:00
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_multiplication
// Source Path: newhope_cambios/FDHT/DFT/DFT10 - block/DFT2-column 1/DFT2-2/Complex-multiplication
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_multiplication
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
  wire signed [38:0] Product_mul_temp;  // sfix39_En22
  wire signed [36:0] Product_out1;  // sfix37_En22
  reg signed [36:0] delayMatch1_reg [0:2];  // sfix37 [3]
  wire signed [36:0] delayMatch1_reg_next [0:2];  // sfix37_En22 [3]
  wire signed [36:0] Product_out1_1;  // sfix37_En22
  reg signed [36:0] HwModeRegister_reg [0:1];  // sfix37 [2]
  wire signed [36:0] HwModeRegister_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Complex_to_Real_Imag1_out2;  // sfix37_En22
  wire signed [1:0] Constant_out1;  // sfix2
  wire signed [3:0] Product4_mul_temp;  // sfix4
  wire signed [36:0] Product4_out1;  // sfix37_En22
  reg signed [36:0] HwModeRegister1_reg [0:1];  // sfix37 [2]
  wire signed [36:0] HwModeRegister1_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Product4_out1_1;  // sfix37_En22
  wire signed [73:0] Product1_mul_temp;  // sfix74_En44
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  wire signed [38:0] Product2_mul_temp;  // sfix39_En22
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [38:0] Product3_mul_temp;  // sfix39_En22
  wire signed [36:0] Product3_out1;  // sfix37_En22
  reg signed [36:0] Product3_out1_1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22
  reg signed [36:0] delayMatch2_reg [0:1];  // sfix37 [2]
  wire signed [36:0] delayMatch2_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Sum1_out1_1;  // sfix37_En22


  assign Complex_to_Real_Imag2_out1 = In2;
  assign Complex_to_Real_Imag2_out2 = 2'sb00;



  assign Product_mul_temp = In1_re * Complex_to_Real_Imag2_out1;
  assign Product_out1 = Product_mul_temp[36:0];



  always @(posedge clk)
    begin : delayMatch1_process
      if (reset_x == 1'b1) begin
        delayMatch1_reg[0] <= 37'sh0000000000;
        delayMatch1_reg[1] <= 37'sh0000000000;
        delayMatch1_reg[2] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
        end
      end
    end

  assign Product_out1_1 = delayMatch1_reg[2];
  assign delayMatch1_reg_next[0] = Product_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];



  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset_x == 1'b1) begin
        HwModeRegister_reg[0] <= 37'sh0000000000;
        HwModeRegister_reg[1] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          HwModeRegister_reg[0] <= HwModeRegister_reg_next[0];
          HwModeRegister_reg[1] <= HwModeRegister_reg_next[1];
        end
      end
    end

  assign Complex_to_Real_Imag1_out2 = HwModeRegister_reg[1];
  assign HwModeRegister_reg_next[0] = In1_im;
  assign HwModeRegister_reg_next[1] = HwModeRegister_reg[0];



  assign Constant_out1 = 2'sb11;



  assign Product4_mul_temp = Complex_to_Real_Imag2_out2 * Constant_out1;
  assign Product4_out1 = {{11{Product4_mul_temp[3]}}, {Product4_mul_temp, 22'b0000000000000000000000}};



  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset_x == 1'b1) begin
        HwModeRegister1_reg[0] <= 37'sh0000000000;
        HwModeRegister1_reg[1] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          HwModeRegister1_reg[0] <= HwModeRegister1_reg_next[0];
          HwModeRegister1_reg[1] <= HwModeRegister1_reg_next[1];
        end
      end
    end

  assign Product4_out1_1 = HwModeRegister1_reg[1];
  assign HwModeRegister1_reg_next[0] = Product4_out1;
  assign HwModeRegister1_reg_next[1] = HwModeRegister1_reg[0];



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

  assign Product2_mul_temp = In1_re * Complex_to_Real_Imag2_out2;
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



  assign Product3_mul_temp = In1_im * Complex_to_Real_Imag2_out1;
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

  assign Sum1_out1_1 = delayMatch2_reg[1];
  assign delayMatch2_reg_next[0] = Sum1_out1;
  assign delayMatch2_reg_next[1] = delayMatch2_reg[0];



  assign Out1_im = Sum1_out1_1;

endmodule  // Complex_multiplication

