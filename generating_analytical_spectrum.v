// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\generating_analytical_spectrum.v
// Created: 2020-12-08 16:13:16
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: generating_analytical_spectrum
// Source Path: FDHT_N/FDHT/generating_analytical_spectrum
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module generating_analytical_spectrum
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
  input   signed [14:0] In1_re;  // sfix15_En5
  input   signed [14:0] In1_im;  // sfix15_En5
  input   signed [32:0] In2;  // sfix33_En28
  output  signed [40:0] Out1_re;  // sfix41_En28
  output  signed [40:0] Out1_im;  // sfix41_En28

  reg signed [14:0] Product1_C2ReIm_C2ReIm_A;  // sfix15_En5
  reg signed [32:0] In2_1;  // sfix33_En28
  wire signed [47:0] Product1_mul_temp;  // sfix48_En33
  wire signed [40:0] Product1_Re;  // sfix41_En28
  reg signed [40:0] Product1_Re_1;  // sfix41_En28
  reg signed [40:0] Product2_C2ReIm_C2ReIm_A;  // sfix41_En28
  wire signed [40:0] Constant14_out1;  // sfix41_En28
  reg signed [40:0] Constant14_out1_1;  // sfix41_En28
  wire signed [81:0] Product2_mul_temp;  // sfix82_En56
  wire signed [40:0] Product2_Re;  // sfix41_En28
  reg signed [40:0] Product2_Re_1;  // sfix41_En28
  reg signed [14:0] Product1_C2ReIm_C2ReIm_B;  // sfix15_En5
  wire signed [47:0] Product11_mul_temp;  // sfix48_En33
  wire signed [40:0] Product1_Im;  // sfix41_En28
  reg signed [40:0] Product1_Im_1;  // sfix41_En28
  reg signed [40:0] Product2_C2ReIm_C2ReIm_B;  // sfix41_En28
  wire signed [81:0] Product21_mul_temp;  // sfix82_En56
  wire signed [40:0] Product2_Im;  // sfix41_En28
  reg signed [40:0] Product2_Im_1;  // sfix41_En28


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset_x == 1'b1) begin
        Product1_C2ReIm_C2ReIm_A <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product1_C2ReIm_C2ReIm_A <= In1_re;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        In2_1 <= 33'sh000000000;
      end
      else begin
        if (enb) begin
          In2_1 <= In2;
        end
      end
    end



  assign Product1_mul_temp = Product1_C2ReIm_C2ReIm_A * In2_1;
  assign Product1_Re = Product1_mul_temp[45:5];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset_x == 1'b1) begin
        Product1_Re_1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Product1_Re_1 <= Product1_Re;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister4_process
      if (reset_x == 1'b1) begin
        Product2_C2ReIm_C2ReIm_A <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Product2_C2ReIm_C2ReIm_A <= Product1_Re_1;
        end
      end
    end



  assign Constant14_out1 = 41'sh00020000000;



  always @(posedge clk)
    begin : reduced_1_process
      if (reset_x == 1'b1) begin
        Constant14_out1_1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Constant14_out1_1 <= Constant14_out1;
        end
      end
    end



  assign Product2_mul_temp = Product2_C2ReIm_C2ReIm_A * Constant14_out1_1;
  assign Product2_Re = Product2_mul_temp[68:28];



  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset_x == 1'b1) begin
        Product2_Re_1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Product2_Re_1 <= Product2_Re;
        end
      end
    end



  assign Out1_re = Product2_Re_1;

  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset_x == 1'b1) begin
        Product1_C2ReIm_C2ReIm_B <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product1_C2ReIm_C2ReIm_B <= In1_im;
        end
      end
    end



  assign Product11_mul_temp = Product1_C2ReIm_C2ReIm_B * In2_1;
  assign Product1_Im = Product11_mul_temp[45:5];



  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset_x == 1'b1) begin
        Product1_Im_1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Product1_Im_1 <= Product1_Im;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister6_process
      if (reset_x == 1'b1) begin
        Product2_C2ReIm_C2ReIm_B <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Product2_C2ReIm_C2ReIm_B <= Product1_Im_1;
        end
      end
    end



  assign Product21_mul_temp = Product2_C2ReIm_C2ReIm_B * Constant14_out1_1;
  assign Product2_Im = Product21_mul_temp[68:28];



  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset_x == 1'b1) begin
        Product2_Im_1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Product2_Im_1 <= Product2_Im;
        end
      end
    end



  assign Out1_im = Product2_Im_1;

endmodule  // generating_analytical_spectrum

