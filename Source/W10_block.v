// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\W10_block.v
// Created: 2020-12-20 13:10:03
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: W10_block
// Source Path: newhope_cambios/FDHT/DFT_2/DFT10 - block_2/W10
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module W10_block
          (clk,
           reset_x,
           enb,
           F10_0_0_re,
           F10_0_0_im,
           F10_0_1_re,
           F10_0_1_im,
           F10_0_2_re,
           F10_0_2_im,
           F10_0_3_re,
           F10_0_3_im,
           F10_0_4_re,
           F10_0_4_im,
           F10_1_0_re,
           F10_1_0_im,
           F10_1_1_re,
           F10_1_1_im,
           F10_1_2_re,
           F10_1_2_im,
           F10_1_3_re,
           F10_1_3_im,
           F10_1_4_re,
           F10_1_4_im,
           alpha0_309017,
           alpha0_809017,
           alpha0_587785,
           alpha0_951056,
           G10_0_0_re,
           G10_0_0_im,
           G10_1_0_re,
           G10_1_0_im,
           G10_0_1_re,
           G10_0_1_im,
           G10_1_1_re,
           G10_1_1_im,
           G10_0_2_re,
           G10_0_2_im,
           G10_1_2_re,
           G10_1_2_im,
           G10_0_3_re,
           G10_0_3_im,
           G10_1_3_re,
           G10_1_3_im,
           G10_0_4_re,
           G10_0_4_im,
           G10_1_4_re,
           G10_1_4_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] F10_0_0_re;  // sfix37_En22
  input   signed [36:0] F10_0_0_im;  // sfix37_En22
  input   signed [36:0] F10_0_1_re;  // sfix37_En22
  input   signed [36:0] F10_0_1_im;  // sfix37_En22
  input   signed [36:0] F10_0_2_re;  // sfix37_En22
  input   signed [36:0] F10_0_2_im;  // sfix37_En22
  input   signed [36:0] F10_0_3_re;  // sfix37_En22
  input   signed [36:0] F10_0_3_im;  // sfix37_En22
  input   signed [36:0] F10_0_4_re;  // sfix37_En22
  input   signed [36:0] F10_0_4_im;  // sfix37_En22
  input   signed [36:0] F10_1_0_re;  // sfix37_En22
  input   signed [36:0] F10_1_0_im;  // sfix37_En22
  input   signed [36:0] F10_1_1_re;  // sfix37_En22
  input   signed [36:0] F10_1_1_im;  // sfix37_En22
  input   signed [36:0] F10_1_2_re;  // sfix37_En22
  input   signed [36:0] F10_1_2_im;  // sfix37_En22
  input   signed [36:0] F10_1_3_re;  // sfix37_En22
  input   signed [36:0] F10_1_3_im;  // sfix37_En22
  input   signed [36:0] F10_1_4_re;  // sfix37_En22
  input   signed [36:0] F10_1_4_im;  // sfix37_En22
  input   signed [36:0] alpha0_309017;  // sfix37_En22
  input   signed [36:0] alpha0_809017;  // sfix37_En22
  input   signed [36:0] alpha0_587785;  // sfix37_En22
  input   signed [36:0] alpha0_951056;  // sfix37_En22
  output  signed [36:0] G10_0_0_re;  // sfix37_En22
  output  signed [36:0] G10_0_0_im;  // sfix37_En22
  output  signed [36:0] G10_1_0_re;  // sfix37_En22
  output  signed [36:0] G10_1_0_im;  // sfix37_En22
  output  signed [36:0] G10_0_1_re;  // sfix37_En22
  output  signed [36:0] G10_0_1_im;  // sfix37_En22
  output  signed [36:0] G10_1_1_re;  // sfix37_En22
  output  signed [36:0] G10_1_1_im;  // sfix37_En22
  output  signed [36:0] G10_0_2_re;  // sfix37_En22
  output  signed [36:0] G10_0_2_im;  // sfix37_En22
  output  signed [36:0] G10_1_2_re;  // sfix37_En22
  output  signed [36:0] G10_1_2_im;  // sfix37_En22
  output  signed [36:0] G10_0_3_re;  // sfix37_En22
  output  signed [36:0] G10_0_3_im;  // sfix37_En22
  output  signed [36:0] G10_1_3_re;  // sfix37_En22
  output  signed [36:0] G10_1_3_im;  // sfix37_En22
  output  signed [36:0] G10_0_4_re;  // sfix37_En22
  output  signed [36:0] G10_0_4_im;  // sfix37_En22
  output  signed [36:0] G10_1_4_re;  // sfix37_En22
  output  signed [36:0] G10_1_4_im;  // sfix37_En22


  wire signed [1:0] Constant4_out1;  // sfix2
  wire signed [38:0] Product2_mul_temp;  // sfix39_En22
  wire signed [36:0] Product2_out1;  // sfix37_En22
  reg signed [36:0] Product2_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_im;  // sfix37_En22
  wire signed [38:0] Product1_mul_temp;  // sfix39_En22
  wire signed [36:0] Product1_out1;  // sfix37_En22
  reg signed [36:0] Product1_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication2_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication2_out1_im;  // sfix37_En22
  wire signed [38:0] Product_mul_temp;  // sfix39_En22
  wire signed [36:0] Product_out1;  // sfix37_En22
  reg signed [36:0] Product_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication3_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication3_out1_im;  // sfix37_En22
  wire signed [38:0] Product3_mul_temp;  // sfix39_En22
  wire signed [36:0] Product3_out1;  // sfix37_En22
  reg signed [36:0] Product3_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication1_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication1_out1_im;  // sfix37_En22


  assign G10_0_0_re = F10_0_0_re;

  assign G10_0_0_im = F10_0_0_im;

  assign G10_1_0_re = F10_1_0_re;

  assign G10_1_0_im = F10_1_0_im;

  assign G10_0_1_re = F10_0_1_re;

  assign G10_0_1_im = F10_0_1_im;

  assign Constant4_out1 = 2'sb11;



  assign Product2_mul_temp = Constant4_out1 * alpha0_587785;
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



  Complex_multiplication_block30 u_Complex_multiplication (.clk(clk),
                                                           .reset_x(reset_x),
                                                           .enb(enb),
                                                           .In1_re(F10_1_1_re),  // sfix37_En22
                                                           .In1_im(F10_1_1_im),  // sfix37_En22
                                                           .In2_real(alpha0_809017),  // sfix37_En22
                                                           .In2_imag(Product2_out1_1),  // sfix37_En22
                                                           .Out1_re(Complex_multiplication_out1_re),  // sfix37_En22
                                                           .Out1_im(Complex_multiplication_out1_im)  // sfix37_En22
                                                           );

  assign G10_1_1_re = Complex_multiplication_out1_re;

  assign G10_1_1_im = Complex_multiplication_out1_im;

  assign G10_0_2_re = F10_0_2_re;

  assign G10_0_2_im = F10_0_2_im;

  assign Product1_mul_temp = alpha0_951056 * Constant4_out1;
  assign Product1_out1 = Product1_mul_temp[36:0];



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



  Complex_multiplication2_block20 u_Complex_multiplication2 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_re(F10_1_2_re),  // sfix37_En22
                                                             .In1_im(F10_1_2_im),  // sfix37_En22
                                                             .In2_real(alpha0_309017),  // sfix37_En22
                                                             .In2_imag(Product1_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication2_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication2_out1_im)  // sfix37_En22
                                                             );

  assign G10_1_2_re = Complex_multiplication2_out1_re;

  assign G10_1_2_im = Complex_multiplication2_out1_im;

  assign G10_0_3_re = F10_0_3_re;

  assign G10_0_3_im = F10_0_3_im;

  assign Product_mul_temp = alpha0_309017 * Constant4_out1;
  assign Product_out1 = Product_mul_temp[36:0];



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



  Complex_multiplication3_block20 u_Complex_multiplication3 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_re(F10_1_3_re),  // sfix37_En22
                                                             .In1_im(F10_1_3_im),  // sfix37_En22
                                                             .In2_real(Product_out1_1),  // sfix37_En22
                                                             .In2_imag(Product1_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication3_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication3_out1_im)  // sfix37_En22
                                                             );

  assign G10_1_3_re = Complex_multiplication3_out1_re;

  assign G10_1_3_im = Complex_multiplication3_out1_im;

  assign G10_0_4_re = F10_0_4_re;

  assign G10_0_4_im = F10_0_4_im;

  assign Product3_mul_temp = alpha0_809017 * Constant4_out1;
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



  Complex_multiplication1_block20 u_Complex_multiplication1 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_re(F10_1_4_re),  // sfix37_En22
                                                             .In1_im(F10_1_4_im),  // sfix37_En22
                                                             .In2_real(Product3_out1_1),  // sfix37_En22
                                                             .In2_imag(Product2_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication1_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication1_out1_im)  // sfix37_En22
                                                             );

  assign G10_1_4_re = Complex_multiplication1_out1_re;

  assign G10_1_4_im = Complex_multiplication1_out1_im;

endmodule  // W10_block

