// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\DFT5_3_block4.v
// Created: 2020-12-20 13:10:04
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DFT5_3_block4
// Source Path: newhope_cambios/FDHT/DFT_2/DFT5-block_IDFT/DFT5-column 1/DFT5-3
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DFT5_3_block4
          (clk,
           reset_x,
           enb,
           in1_re,
           in1_im,
           in2_re,
           in2_im,
           in3_re,
           in3_im,
           in4_re,
           in4_im,
           in5_re,
           in5_im,
           alpha0_309017,
           alpha0_809017,
           alpha0_587785,
           alpha0_951056,
           out3_re,
           out3_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] in1_re;  // sfix37_En22
  input   signed [36:0] in1_im;  // sfix37_En22
  input   signed [36:0] in2_re;  // sfix37_En22
  input   signed [36:0] in2_im;  // sfix37_En22
  input   signed [36:0] in3_re;  // sfix37_En22
  input   signed [36:0] in3_im;  // sfix37_En22
  input   signed [36:0] in4_re;  // sfix37_En22
  input   signed [36:0] in4_im;  // sfix37_En22
  input   signed [36:0] in5_re;  // sfix37_En22
  input   signed [36:0] in5_im;  // sfix37_En22
  input   signed [36:0] alpha0_309017;  // sfix37_En22
  input   signed [36:0] alpha0_809017;  // sfix37_En22
  input   signed [36:0] alpha0_587785;  // sfix37_En22
  input   signed [36:0] alpha0_951056;  // sfix37_En22
  output  signed [36:0] out3_re;  // sfix37_En22
  output  signed [36:0] out3_im;  // sfix37_En22


  wire signed [1:0] Constant1_out1;  // sfix2
  wire signed [38:0] Product4_mul_temp;  // sfix39_En22
  wire signed [36:0] Product4_out1;  // sfix37_En22
  reg signed [36:0] Product4_out1_1;  // sfix37_En22
  wire signed [38:0] Product1_mul_temp;  // sfix39_En22
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_multiplication1_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication1_out1_im;  // sfix37_En22
  wire signed [38:0] Product2_mul_temp;  // sfix39_En22
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication2_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication2_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum2_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum2_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_multiplication3_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication3_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum3_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum3_out1_im;  // sfix37_En22
  wire signed [36:0] Complex_Sum1_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_Sum1_out1_im;  // sfix37_En22


  assign Constant1_out1 = 2'sb11;



  assign Product4_mul_temp = alpha0_809017 * Constant1_out1;
  assign Product4_out1 = Product4_mul_temp[36:0];



  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset_x == 1'b1) begin
        Product4_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product4_out1_1 <= Product4_out1;
        end
      end
    end



  assign Product1_mul_temp = alpha0_587785 * Constant1_out1;
  assign Product1_out1 = Product1_mul_temp[36:0];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset_x == 1'b1) begin
        Product1_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product1_out1_1 <= Product1_out1;
        end
      end
    end



  Complex_multiplication_block32 u_Complex_multiplication (.clk(clk),
                                                           .reset_x(reset_x),
                                                           .enb(enb),
                                                           .In1_re(in2_re),  // sfix37_En22
                                                           .In1_im(in2_im),  // sfix37_En22
                                                           .In2_real(Product4_out1_1),  // sfix37_En22
                                                           .In2_imag(Product1_out1_1),  // sfix37_En22
                                                           .Out1_re(Complex_multiplication_out1_re),  // sfix37_En22
                                                           .Out1_im(Complex_multiplication_out1_im)  // sfix37_En22
                                                           );

  Complex_Sum_block46 u_Complex_Sum (.clk(clk),
                                     .reset_x(reset_x),
                                     .enb(enb),
                                     .In1_re(in1_re),  // sfix37_En22
                                     .In1_im(in1_im),  // sfix37_En22
                                     .In2_re(Complex_multiplication_out1_re),  // sfix37_En22
                                     .In2_im(Complex_multiplication_out1_im),  // sfix37_En22
                                     .Out1_re(Complex_Sum_out1_re),  // sfix37_En22
                                     .Out1_im(Complex_Sum_out1_im)  // sfix37_En22
                                     );

  Complex_multiplication1_block22 u_Complex_multiplication1 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_re(in3_re),  // sfix37_En22
                                                             .In1_im(in3_im),  // sfix37_En22
                                                             .In2_real(alpha0_309017),  // sfix37_En22
                                                             .In2_imag(alpha0_951056),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication1_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication1_out1_im)  // sfix37_En22
                                                             );

  assign Product2_mul_temp = alpha0_951056 * Constant1_out1;
  assign Product2_out1 = Product2_mul_temp[36:0];



  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset_x == 1'b1) begin
        Product2_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Product2_out1_1 <= Product2_out1;
        end
      end
    end



  Complex_multiplication2_block22 u_Complex_multiplication2 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_re(in4_re),  // sfix37_En22
                                                             .In1_im(in4_im),  // sfix37_En22
                                                             .In2_real(alpha0_309017),  // sfix37_En22
                                                             .In2_imag(Product2_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication2_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication2_out1_im)  // sfix37_En22
                                                             );

  Complex_Sum2_block26 u_Complex_Sum2 (.In1_re(Complex_multiplication1_out1_re),  // sfix37_En22
                                       .In1_im(Complex_multiplication1_out1_im),  // sfix37_En22
                                       .In2_re(Complex_multiplication2_out1_re),  // sfix37_En22
                                       .In2_im(Complex_multiplication2_out1_im),  // sfix37_En22
                                       .Out1_re(Complex_Sum2_out1_re),  // sfix37_En22
                                       .Out1_im(Complex_Sum2_out1_im)  // sfix37_En22
                                       );

  Complex_multiplication3_block22 u_Complex_multiplication3 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_re(in5_re),  // sfix37_En22
                                                             .In1_im(in5_im),  // sfix37_En22
                                                             .In2_real(Product4_out1_1),  // sfix37_En22
                                                             .In2_imag(alpha0_587785),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication3_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication3_out1_im)  // sfix37_En22
                                                             );

  Complex_Sum3_block26 u_Complex_Sum3 (.In1_re(Complex_Sum2_out1_re),  // sfix37_En22
                                       .In1_im(Complex_Sum2_out1_im),  // sfix37_En22
                                       .In2_re(Complex_multiplication3_out1_re),  // sfix37_En22
                                       .In2_im(Complex_multiplication3_out1_im),  // sfix37_En22
                                       .Out1_re(Complex_Sum3_out1_re),  // sfix37_En22
                                       .Out1_im(Complex_Sum3_out1_im)  // sfix37_En22
                                       );

  Complex_Sum1_block26 u_Complex_Sum1 (.In1_re(Complex_Sum_out1_re),  // sfix37_En22
                                       .In1_im(Complex_Sum_out1_im),  // sfix37_En22
                                       .In2_re(Complex_Sum3_out1_re),  // sfix37_En22
                                       .In2_im(Complex_Sum3_out1_im),  // sfix37_En22
                                       .Out1_re(Complex_Sum1_out1_re),  // sfix37_En22
                                       .Out1_im(Complex_Sum1_out1_im)  // sfix37_En22
                                       );

  assign out3_re = Complex_Sum1_out1_re;

  assign out3_im = Complex_Sum1_out1_im;

endmodule  // DFT5_3_block4
