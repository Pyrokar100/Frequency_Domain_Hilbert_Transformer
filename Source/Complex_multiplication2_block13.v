// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Complex_multiplication2_block13.v
// Created: 2020-12-20 13:10:03
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex_multiplication2_block13
// Source Path: newhope_cambios/FDHT/DFT_2/DFT10 - block_2/DFT5-row 1/DFT5-3/Complex-multiplication2
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex_multiplication2_block13
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
  input   In1_re;  // ufix1
  input   In1_im;  // ufix1
  input   signed [36:0] In2_real;  // sfix37_En22
  input   signed [36:0] In2_imag;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22


  wire signed [36:0] Product_in0;  // sfix37_En22
  wire signed [37:0] Product_cast;  // sfix38_En22
  wire signed [36:0] Product_out1;  // sfix37_En22
  reg signed [36:0] delayMatch1_reg [0:2];  // sfix37 [3]
  wire signed [36:0] delayMatch1_reg_next [0:2];  // sfix37_En22 [3]
  wire signed [36:0] Product_out1_1;  // sfix37_En22
  reg  [0:1] delayMatch_reg;  // ufix1 [2]
  wire [0:1] delayMatch_reg_next;  // ufix1 [2]
  wire Complex_to_Real_Imag1_out2;  // ufix1
  wire signed [1:0] Constant_out1;  // sfix2
  wire signed [38:0] Product4_mul_temp;  // sfix39_En22
  wire signed [36:0] Product4_out1;  // sfix37_En22
  reg signed [36:0] Product4_out1_1;  // sfix37_En22
  wire signed [36:0] Product1_in0;  // sfix37_En22
  wire signed [37:0] Product1_cast;  // sfix38_En22
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Sum_out1;  // sfix37_En22
  reg  Complex_to_Real_Imag1_out1;  // ufix1
  wire signed [36:0] Product2_in0;  // sfix37_En22
  wire signed [37:0] Product2_cast;  // sfix38_En22
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [36:0] Product3_in0;  // sfix37_En22
  wire signed [37:0] Product3_cast;  // sfix38_En22
  wire signed [36:0] Product3_out1;  // sfix37_En22
  reg signed [36:0] delayMatch3_reg [0:1];  // sfix37 [2]
  wire signed [36:0] delayMatch3_reg_next [0:1];  // sfix37_En22 [2]
  wire signed [36:0] Product3_out1_1;  // sfix37_En22
  wire signed [36:0] Sum1_out1;  // sfix37_En22
  reg signed [36:0] Sum1_out1_1;  // sfix37_En22


  assign Product_in0 = (In1_re == 1'b1 ? In2_real :
              37'sh0000000000);
  assign Product_cast = {Product_in0[36], Product_in0};
  assign Product_out1 = Product_cast[36:0];



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
    begin : delayMatch_process
      if (reset_x == 1'b1) begin
        delayMatch_reg[0] <= 1'b0;
        delayMatch_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
        end
      end
    end

  assign Complex_to_Real_Imag1_out2 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = In1_im;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Constant_out1 = 2'sb11;



  assign Product4_mul_temp = In2_imag * Constant_out1;
  assign Product4_out1 = Product4_mul_temp[36:0];



  always @(posedge clk)
    begin : PipelineRegister4_process
      if (reset_x == 1'b1) begin
        Product4_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product4_out1_1 <= Product4_out1;
        end
      end
    end



  assign Product1_in0 = (Complex_to_Real_Imag1_out2 == 1'b1 ? Product4_out1_1 :
              37'sh0000000000);
  assign Product1_cast = {Product1_in0[36], Product1_in0};
  assign Product1_out1 = Product1_cast[36:0];



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
    begin : delayMatch2_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out1 <= In1_re;
        end
      end
    end



  assign Product2_in0 = (Complex_to_Real_Imag1_out1 == 1'b1 ? In2_imag :
              37'sh0000000000);
  assign Product2_cast = {Product2_in0[36], Product2_in0};
  assign Product2_out1 = Product2_cast[36:0];



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



  assign Product3_in0 = (In1_im == 1'b1 ? In2_real :
              37'sh0000000000);
  assign Product3_cast = {Product3_in0[36], Product3_in0};
  assign Product3_out1 = Product3_cast[36:0];



  always @(posedge clk)
    begin : delayMatch3_process
      if (reset_x == 1'b1) begin
        delayMatch3_reg[0] <= 37'sh0000000000;
        delayMatch3_reg[1] <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          delayMatch3_reg[0] <= delayMatch3_reg_next[0];
          delayMatch3_reg[1] <= delayMatch3_reg_next[1];
        end
      end
    end

  assign Product3_out1_1 = delayMatch3_reg[1];
  assign delayMatch3_reg_next[0] = Product3_out1;
  assign delayMatch3_reg_next[1] = delayMatch3_reg[0];



  assign Sum1_out1 = Product2_out1_1 + Product3_out1_1;



  always @(posedge clk)
    begin : delayMatch4_process
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

endmodule  // Complex_multiplication2_block13

