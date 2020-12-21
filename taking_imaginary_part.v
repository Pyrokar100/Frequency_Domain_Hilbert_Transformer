// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\taking_imaginary_part.v
// Created: 2020-12-08 16:13:16
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: taking_imaginary_part
// Source Path: FDHT_N/FDHT/taking_imaginary_part
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module taking_imaginary_part
          (clk,
           reset_x,
           enb,
           In1_re,
           In1_im,
           In2,
           Out1);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [40:0] In1_re;  // sfix41_En28
  input   signed [40:0] In1_im;  // sfix41_En28
  input   signed [14:0] In2;  // sfix15_En5
  output  signed [14:0] Out1;  // sfix15_En5

  reg signed [40:0] Complex_to_Real_Imag4_out1;  // sfix41_En28
  reg signed [14:0] In2_1;  // sfix15_En5
  wire signed [55:0] Product3_mul_temp;  // sfix56_En33
  wire signed [14:0] Product3_out1;  // sfix15_En5
  reg signed [14:0] Product3_out1_1;  // sfix15_En5


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag4_out1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag4_out1 <= In1_im;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset_x == 1'b1) begin
        In2_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          In2_1 <= In2;
        end
      end
    end



  assign Product3_mul_temp = Complex_to_Real_Imag4_out1 * In2_1;
  assign Product3_out1 = Product3_mul_temp[42:28];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset_x == 1'b1) begin
        Product3_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product3_out1_1 <= Product3_out1;
        end
      end
    end



  assign Out1 = Product3_out1_1;

endmodule  // taking_imaginary_part
