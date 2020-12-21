// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\taking_imaginary_part.v
// Created: 2020-12-20 13:10:05
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: taking_imaginary_part
// Source Path: newhope_cambios/FDHT/taking_imaginary_part
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module taking_imaginary_part
          (clk,
           reset_x,
           enb,
           In1_re,
           In2_re,
           In3_re,
           In4_re,
           In5_re,
           In6_re,
           In7_re,
           In8_re,
           In9_re,
           In10_re,
           In11,
           Out1,
           Out2,
           Out3,
           Out4,
           Out5,
           Out6,
           Out7,
           Out8,
           Out9,
           Out10,
           Out11,
           Out12,
           Out13,
           Out14,
           Out15,
           Out16,
           Out17,
           Out18,
           Out19,
           Out20,
           Out21,
           Out22,
           Out23,
           Out24,
           Out25,
           Out26,
           Out27,
           Out28,
           Out29,
           Out30,
           Out31,
           Out32,
           Out33,
           Out34,
           Out35,
           Out36,
           Out37,
           Out38,
           Out39,
           Out40,
           Out41,
           Out42,
           Out43,
           Out44,
           Out45,
           Out46,
           Out47,
           Out48,
           Out49,
           Out50);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1_re;  // sfix37_En22
  input   signed [36:0] In2_re;  // sfix37_En22
  input   signed [36:0] In3_re;  // sfix37_En22
  input   signed [36:0] In4_re;  // sfix37_En22
  input   signed [36:0] In5_re;  // sfix37_En22
  input   signed [36:0] In6_re;  // sfix37_En22
  input   signed [36:0] In7_re;  // sfix37_En22
  input   signed [36:0] In8_re;  // sfix37_En22
  input   signed [36:0] In9_re;  // sfix37_En22
  input   signed [36:0] In10_re;  // sfix37_En22
  input   [7:0] In11;  // uint8
  output  signed [14:0] Out1;  // sfix15_En5
  output  signed [14:0] Out2;  // sfix15_En5
  output  signed [14:0] Out3;  // sfix15_En5
  output  signed [14:0] Out4;  // sfix15_En5
  output  signed [14:0] Out5;  // sfix15_En5
  output  signed [14:0] Out6;  // sfix15_En5
  output  signed [14:0] Out7;  // sfix15_En5
  output  signed [14:0] Out8;  // sfix15_En5
  output  signed [14:0] Out9;  // sfix15_En5
  output  signed [14:0] Out10;  // sfix15_En5
  output  signed [14:0] Out11;  // sfix15_En5
  output  signed [14:0] Out12;  // sfix15_En5
  output  signed [14:0] Out13;  // sfix15_En5
  output  signed [14:0] Out14;  // sfix15_En5
  output  signed [14:0] Out15;  // sfix15_En5
  output  signed [14:0] Out16;  // sfix15_En5
  output  signed [14:0] Out17;  // sfix15_En5
  output  signed [14:0] Out18;  // sfix15_En5
  output  signed [14:0] Out19;  // sfix15_En5
  output  signed [14:0] Out20;  // sfix15_En5
  output  signed [14:0] Out21;  // sfix15_En5
  output  signed [14:0] Out22;  // sfix15_En5
  output  signed [14:0] Out23;  // sfix15_En5
  output  signed [14:0] Out24;  // sfix15_En5
  output  signed [14:0] Out25;  // sfix15_En5
  output  signed [14:0] Out26;  // sfix15_En5
  output  signed [14:0] Out27;  // sfix15_En5
  output  signed [14:0] Out28;  // sfix15_En5
  output  signed [14:0] Out29;  // sfix15_En5
  output  signed [14:0] Out30;  // sfix15_En5
  output  signed [14:0] Out31;  // sfix15_En5
  output  signed [14:0] Out32;  // sfix15_En5
  output  signed [14:0] Out33;  // sfix15_En5
  output  signed [14:0] Out34;  // sfix15_En5
  output  signed [14:0] Out35;  // sfix15_En5
  output  signed [14:0] Out36;  // sfix15_En5
  output  signed [14:0] Out37;  // sfix15_En5
  output  signed [14:0] Out38;  // sfix15_En5
  output  signed [14:0] Out39;  // sfix15_En5
  output  signed [14:0] Out40;  // sfix15_En5
  output  signed [14:0] Out41;  // sfix15_En5
  output  signed [14:0] Out42;  // sfix15_En5
  output  signed [14:0] Out43;  // sfix15_En5
  output  signed [14:0] Out44;  // sfix15_En5
  output  signed [14:0] Out45;  // sfix15_En5
  output  signed [14:0] Out46;  // sfix15_En5
  output  signed [14:0] Out47;  // sfix15_En5
  output  signed [14:0] Out48;  // sfix15_En5
  output  signed [14:0] Out49;  // sfix15_En5
  output  signed [14:0] Out50;  // sfix15_En5


  wire signed [36:0] Constant8_out1;  // sfix37_En22
  reg signed [36:0] Constant8_out1_1;  // sfix37_En22
  reg signed [36:0] Complex_to_Real_Imag3_out1;  // sfix37_En22
  wire signed [73:0] Product3_mul_temp;  // sfix74_En44
  wire signed [14:0] Product3_out1;  // sfix15_En5
  reg signed [14:0] Product3_out1_1;  // sfix15_En5
  wire signed [14:0] Mem3_out1;  // sfix15_En5
  wire signed [14:0] Mem3_out2;  // sfix15_En5
  wire signed [14:0] Mem3_out3;  // sfix15_En5
  wire signed [14:0] Mem3_out4;  // sfix15_En5
  wire signed [14:0] Mem3_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag8_out1;  // sfix37_En22
  wire signed [73:0] Product8_mul_temp;  // sfix74_En44
  wire signed [14:0] Product8_out1;  // sfix15_En5
  reg signed [14:0] Product8_out1_1;  // sfix15_En5
  wire signed [14:0] Mem8_out1;  // sfix15_En5
  wire signed [14:0] Mem8_out2;  // sfix15_En5
  wire signed [14:0] Mem8_out3;  // sfix15_En5
  wire signed [14:0] Mem8_out4;  // sfix15_En5
  wire signed [14:0] Mem8_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag4_out1;  // sfix37_En22
  wire signed [73:0] Product4_mul_temp;  // sfix74_En44
  wire signed [14:0] Product4_out1;  // sfix15_En5
  reg signed [14:0] Product4_out1_1;  // sfix15_En5
  wire signed [14:0] Mem4_out1;  // sfix15_En5
  wire signed [14:0] Mem4_out2;  // sfix15_En5
  wire signed [14:0] Mem4_out3;  // sfix15_En5
  wire signed [14:0] Mem4_out4;  // sfix15_En5
  wire signed [14:0] Mem4_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag9_out1;  // sfix37_En22
  wire signed [73:0] Product9_mul_temp;  // sfix74_En44
  wire signed [14:0] Product9_out1;  // sfix15_En5
  reg signed [14:0] Product9_out1_1;  // sfix15_En5
  wire signed [14:0] Mem9_out1;  // sfix15_En5
  wire signed [14:0] Mem9_out2;  // sfix15_En5
  wire signed [14:0] Mem9_out3;  // sfix15_En5
  wire signed [14:0] Mem9_out4;  // sfix15_En5
  wire signed [14:0] Mem9_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag_out1;  // sfix37_En22
  wire signed [73:0] Product_mul_temp;  // sfix74_En44
  wire signed [14:0] Product_out1;  // sfix15_En5
  reg signed [14:0] Product_out1_1;  // sfix15_En5
  wire signed [14:0] Mem_out1;  // sfix15_En5
  wire signed [14:0] Mem_out2;  // sfix15_En5
  wire signed [14:0] Mem_out3;  // sfix15_En5
  wire signed [14:0] Mem_out4;  // sfix15_En5
  wire signed [14:0] Mem_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag5_out1;  // sfix37_En22
  wire signed [73:0] Product5_mul_temp;  // sfix74_En44
  wire signed [14:0] Product5_out1;  // sfix15_En5
  reg signed [14:0] Product5_out1_1;  // sfix15_En5
  wire signed [14:0] Mem5_out1;  // sfix15_En5
  wire signed [14:0] Mem5_out2;  // sfix15_En5
  wire signed [14:0] Mem5_out3;  // sfix15_En5
  wire signed [14:0] Mem5_out4;  // sfix15_En5
  wire signed [14:0] Mem5_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag1_out1;  // sfix37_En22
  wire signed [73:0] Product1_mul_temp;  // sfix74_En44
  wire signed [14:0] Product1_out1;  // sfix15_En5
  reg signed [14:0] Product1_out1_1;  // sfix15_En5
  wire signed [14:0] Mem1_out1;  // sfix15_En5
  wire signed [14:0] Mem1_out2;  // sfix15_En5
  wire signed [14:0] Mem1_out3;  // sfix15_En5
  wire signed [14:0] Mem1_out4;  // sfix15_En5
  wire signed [14:0] Mem1_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag6_out1;  // sfix37_En22
  wire signed [73:0] Product6_mul_temp;  // sfix74_En44
  wire signed [14:0] Product6_out1;  // sfix15_En5
  reg signed [14:0] Product6_out1_1;  // sfix15_En5
  wire signed [14:0] Mem6_out1;  // sfix15_En5
  wire signed [14:0] Mem6_out2;  // sfix15_En5
  wire signed [14:0] Mem6_out3;  // sfix15_En5
  wire signed [14:0] Mem6_out4;  // sfix15_En5
  wire signed [14:0] Mem6_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag2_out1;  // sfix37_En22
  wire signed [73:0] Product2_mul_temp;  // sfix74_En44
  wire signed [14:0] Product2_out1;  // sfix15_En5
  reg signed [14:0] Product2_out1_1;  // sfix15_En5
  wire signed [14:0] Mem2_out1;  // sfix15_En5
  wire signed [14:0] Mem2_out2;  // sfix15_En5
  wire signed [14:0] Mem2_out3;  // sfix15_En5
  wire signed [14:0] Mem2_out4;  // sfix15_En5
  wire signed [14:0] Mem2_out5;  // sfix15_En5
  reg signed [36:0] Complex_to_Real_Imag7_out1;  // sfix37_En22
  wire signed [73:0] Product7_mul_temp;  // sfix74_En44
  wire signed [14:0] Product7_out1;  // sfix15_En5
  reg signed [14:0] Product7_out1_1;  // sfix15_En5
  wire signed [14:0] Mem7_out1;  // sfix15_En5
  wire signed [14:0] Mem7_out2;  // sfix15_En5
  wire signed [14:0] Mem7_out3;  // sfix15_En5
  wire signed [14:0] Mem7_out4;  // sfix15_En5
  wire signed [14:0] Mem7_out5;  // sfix15_En5


  assign Constant8_out1 = 37'sh00000147AE;



  always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        Constant8_out1_1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Constant8_out1_1 <= Constant8_out1;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister7_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag3_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag3_out1 <= In4_re;
        end
      end
    end



  assign Product3_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag3_out1;
  assign Product3_out1 = Product3_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset_x == 1'b1) begin
        Product3_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product3_out1_1 <= Product3_out1;
        end
      end
    end



  Mem3_block3 u_Mem3 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(Product3_out1_1),  // sfix15_En5
                      .In2(In11),  // uint8
                      .Out1(Mem3_out1),  // sfix15_En5
                      .Out2(Mem3_out2),  // sfix15_En5
                      .Out3(Mem3_out3),  // sfix15_En5
                      .Out4(Mem3_out4),  // sfix15_En5
                      .Out5(Mem3_out5)  // sfix15_En5
                      );

  assign Out1 = Mem3_out5;

  always @(posedge clk)
    begin : HwModeRegister17_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag8_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag8_out1 <= In9_re;
        end
      end
    end



  assign Product8_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag8_out1;
  assign Product8_out1 = Product8_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister8_process
      if (reset_x == 1'b1) begin
        Product8_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product8_out1_1 <= Product8_out1;
        end
      end
    end



  Mem8 u_Mem8 (.clk(clk),
               .reset_x(reset_x),
               .enb(enb),
               .In1(Product8_out1_1),  // sfix15_En5
               .In2(In11),  // uint8
               .Out1(Mem8_out1),  // sfix15_En5
               .Out2(Mem8_out2),  // sfix15_En5
               .Out3(Mem8_out3),  // sfix15_En5
               .Out4(Mem8_out4),  // sfix15_En5
               .Out5(Mem8_out5)  // sfix15_En5
               );

  assign Out2 = Mem8_out1;

  assign Out3 = Mem8_out2;

  assign Out4 = Mem8_out3;

  assign Out5 = Mem8_out4;

  assign Out6 = Mem8_out5;

  always @(posedge clk)
    begin : HwModeRegister9_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag4_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag4_out1 <= In5_re;
        end
      end
    end



  assign Product4_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag4_out1;
  assign Product4_out1 = Product4_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister4_process
      if (reset_x == 1'b1) begin
        Product4_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product4_out1_1 <= Product4_out1;
        end
      end
    end



  Mem4_block4 u_Mem4 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(Product4_out1_1),  // sfix15_En5
                      .In2(In11),  // uint8
                      .Out1(Mem4_out1),  // sfix15_En5
                      .Out2(Mem4_out2),  // sfix15_En5
                      .Out3(Mem4_out3),  // sfix15_En5
                      .Out4(Mem4_out4),  // sfix15_En5
                      .Out5(Mem4_out5)  // sfix15_En5
                      );

  assign Out7 = Mem4_out1;

  assign Out8 = Mem4_out2;

  assign Out9 = Mem4_out3;

  assign Out10 = Mem4_out4;

  assign Out11 = Mem4_out5;

  always @(posedge clk)
    begin : HwModeRegister19_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag9_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag9_out1 <= In10_re;
        end
      end
    end



  assign Product9_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag9_out1;
  assign Product9_out1 = Product9_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister9_process
      if (reset_x == 1'b1) begin
        Product9_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product9_out1_1 <= Product9_out1;
        end
      end
    end



  Mem9 u_Mem9 (.clk(clk),
               .reset_x(reset_x),
               .enb(enb),
               .In1(Product9_out1_1),  // sfix15_En5
               .In2(In11),  // uint8
               .Out1(Mem9_out1),  // sfix15_En5
               .Out2(Mem9_out2),  // sfix15_En5
               .Out3(Mem9_out3),  // sfix15_En5
               .Out4(Mem9_out4),  // sfix15_En5
               .Out5(Mem9_out5)  // sfix15_En5
               );

  assign Out12 = Mem9_out1;

  assign Out13 = Mem9_out2;

  assign Out14 = Mem9_out3;

  assign Out15 = Mem9_out4;

  assign Out16 = Mem9_out5;

  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag_out1 <= In1_re;
        end
      end
    end



  assign Product_mul_temp = Complex_to_Real_Imag_out1 * Constant8_out1_1;
  assign Product_out1 = Product_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset_x == 1'b1) begin
        Product_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product_out1_1 <= Product_out1;
        end
      end
    end



  Mem u_Mem (.clk(clk),
             .reset_x(reset_x),
             .enb(enb),
             .In1(Product_out1_1),  // sfix15_En5
             .In2(In11),  // uint8
             .Out1(Mem_out1),  // sfix15_En5
             .Out2(Mem_out2),  // sfix15_En5
             .Out3(Mem_out3),  // sfix15_En5
             .Out4(Mem_out4),  // sfix15_En5
             .Out5(Mem_out5)  // sfix15_En5
             );

  assign Out17 = Mem_out1;

  assign Out18 = Mem_out2;

  assign Out19 = Mem_out3;

  assign Out20 = Mem_out4;

  assign Out21 = Mem_out5;

  always @(posedge clk)
    begin : HwModeRegister11_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag5_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag5_out1 <= In6_re;
        end
      end
    end



  assign Product5_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag5_out1;
  assign Product5_out1 = Product5_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister5_process
      if (reset_x == 1'b1) begin
        Product5_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product5_out1_1 <= Product5_out1;
        end
      end
    end



  Mem5_block5 u_Mem5 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(Product5_out1_1),  // sfix15_En5
                      .In2(In11),  // uint8
                      .Out1(Mem5_out1),  // sfix15_En5
                      .Out2(Mem5_out2),  // sfix15_En5
                      .Out3(Mem5_out3),  // sfix15_En5
                      .Out4(Mem5_out4),  // sfix15_En5
                      .Out5(Mem5_out5)  // sfix15_En5
                      );

  assign Out22 = Mem5_out1;

  assign Out23 = Mem5_out2;

  assign Out24 = Mem5_out3;

  assign Out25 = Mem5_out4;

  assign Out26 = Mem5_out5;

  always @(posedge clk)
    begin : HwModeRegister3_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag1_out1 <= In2_re;
        end
      end
    end



  assign Product1_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag1_out1;
  assign Product1_out1 = Product1_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset_x == 1'b1) begin
        Product1_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product1_out1_1 <= Product1_out1;
        end
      end
    end



  Mem1_block1 u_Mem1 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(Product1_out1_1),  // sfix15_En5
                      .In2(In11),  // uint8
                      .Out1(Mem1_out1),  // sfix15_En5
                      .Out2(Mem1_out2),  // sfix15_En5
                      .Out3(Mem1_out3),  // sfix15_En5
                      .Out4(Mem1_out4),  // sfix15_En5
                      .Out5(Mem1_out5)  // sfix15_En5
                      );

  assign Out27 = Mem1_out1;

  assign Out28 = Mem1_out2;

  assign Out29 = Mem1_out3;

  assign Out30 = Mem1_out4;

  assign Out31 = Mem1_out5;

  always @(posedge clk)
    begin : HwModeRegister13_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag6_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag6_out1 <= In7_re;
        end
      end
    end



  assign Product6_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag6_out1;
  assign Product6_out1 = Product6_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister6_process
      if (reset_x == 1'b1) begin
        Product6_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product6_out1_1 <= Product6_out1;
        end
      end
    end



  Mem6 u_Mem6 (.clk(clk),
               .reset_x(reset_x),
               .enb(enb),
               .In1(Product6_out1_1),  // sfix15_En5
               .In2(In11),  // uint8
               .Out1(Mem6_out1),  // sfix15_En5
               .Out2(Mem6_out2),  // sfix15_En5
               .Out3(Mem6_out3),  // sfix15_En5
               .Out4(Mem6_out4),  // sfix15_En5
               .Out5(Mem6_out5)  // sfix15_En5
               );

  assign Out32 = Mem6_out1;

  assign Out33 = Mem6_out2;

  assign Out34 = Mem6_out3;

  assign Out35 = Mem6_out4;

  assign Out36 = Mem6_out5;

  always @(posedge clk)
    begin : HwModeRegister5_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag2_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag2_out1 <= In3_re;
        end
      end
    end



  assign Product2_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag2_out1;
  assign Product2_out1 = Product2_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset_x == 1'b1) begin
        Product2_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product2_out1_1 <= Product2_out1;
        end
      end
    end



  Mem2_block2 u_Mem2 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(Product2_out1_1),  // sfix15_En5
                      .In2(In11),  // uint8
                      .Out1(Mem2_out1),  // sfix15_En5
                      .Out2(Mem2_out2),  // sfix15_En5
                      .Out3(Mem2_out3),  // sfix15_En5
                      .Out4(Mem2_out4),  // sfix15_En5
                      .Out5(Mem2_out5)  // sfix15_En5
                      );

  assign Out37 = Mem2_out1;

  assign Out38 = Mem2_out2;

  assign Out39 = Mem2_out3;

  assign Out40 = Mem2_out4;

  assign Out41 = Mem2_out5;

  always @(posedge clk)
    begin : HwModeRegister15_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag7_out1 <= 37'sh0000000000;
      end
      else begin
        if (enb) begin
          Complex_to_Real_Imag7_out1 <= In8_re;
        end
      end
    end



  assign Product7_mul_temp = Constant8_out1_1 * Complex_to_Real_Imag7_out1;
  assign Product7_out1 = Product7_mul_temp[53:39];



  always @(posedge clk)
    begin : PipelineRegister7_process
      if (reset_x == 1'b1) begin
        Product7_out1_1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Product7_out1_1 <= Product7_out1;
        end
      end
    end



  Mem7 u_Mem7 (.clk(clk),
               .reset_x(reset_x),
               .enb(enb),
               .In1(Product7_out1_1),  // sfix15_En5
               .In2(In11),  // uint8
               .Out1(Mem7_out1),  // sfix15_En5
               .Out2(Mem7_out2),  // sfix15_En5
               .Out3(Mem7_out3),  // sfix15_En5
               .Out4(Mem7_out4),  // sfix15_En5
               .Out5(Mem7_out5)  // sfix15_En5
               );

  assign Out42 = Mem7_out1;

  assign Out43 = Mem7_out2;

  assign Out44 = Mem7_out3;

  assign Out45 = Mem7_out4;

  assign Out46 = Mem7_out5;

  assign Out47 = Mem3_out1;

  assign Out48 = Mem3_out2;

  assign Out49 = Mem3_out3;

  assign Out50 = Mem3_out4;

endmodule  // taking_imaginary_part

