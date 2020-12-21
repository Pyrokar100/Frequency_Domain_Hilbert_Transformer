// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\W50.v
// Created: 2020-12-20 13:10:02
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: W50
// Source Path: newhope_cambios/FDHT/DFT/W50
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module W50
          (clk,
           reset_x,
           enb,
           In1_re,
           In1_im,
           In2_re,
           In2_im,
           In3_re,
           In3_im,
           In4_re,
           In4_im,
           In5_re,
           In5_im,
           In6_re,
           In6_im,
           In7_re,
           In7_im,
           In8_re,
           In8_im,
           In9_re,
           In9_im,
           In10_re,
           In10_im,
           Out1_re,
           Out1_im,
           Out2_re,
           Out2_im,
           Out3_re,
           Out3_im,
           Out4_re,
           Out4_im,
           Out5_re,
           Out5_im,
           Out6_re,
           Out6_im,
           Out7_re,
           Out7_im,
           Out8_re,
           Out8_im,
           Out9_re,
           Out9_im,
           Out10_re,
           Out10_im);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] In1_re;  // sfix37_En22
  input   signed [36:0] In1_im;  // sfix37_En22
  input   signed [36:0] In2_re;  // sfix37_En22
  input   signed [36:0] In2_im;  // sfix37_En22
  input   signed [36:0] In3_re;  // sfix37_En22
  input   signed [36:0] In3_im;  // sfix37_En22
  input   signed [36:0] In4_re;  // sfix37_En22
  input   signed [36:0] In4_im;  // sfix37_En22
  input   signed [36:0] In5_re;  // sfix37_En22
  input   signed [36:0] In5_im;  // sfix37_En22
  input   signed [36:0] In6_re;  // sfix37_En22
  input   signed [36:0] In6_im;  // sfix37_En22
  input   signed [36:0] In7_re;  // sfix37_En22
  input   signed [36:0] In7_im;  // sfix37_En22
  input   signed [36:0] In8_re;  // sfix37_En22
  input   signed [36:0] In8_im;  // sfix37_En22
  input   signed [36:0] In9_re;  // sfix37_En22
  input   signed [36:0] In9_im;  // sfix37_En22
  input   signed [36:0] In10_re;  // sfix37_En22
  input   signed [36:0] In10_im;  // sfix37_En22
  output  signed [36:0] Out1_re;  // sfix37_En22
  output  signed [36:0] Out1_im;  // sfix37_En22
  output  signed [36:0] Out2_re;  // sfix37_En22
  output  signed [36:0] Out2_im;  // sfix37_En22
  output  signed [36:0] Out3_re;  // sfix37_En22
  output  signed [36:0] Out3_im;  // sfix37_En22
  output  signed [36:0] Out4_re;  // sfix37_En22
  output  signed [36:0] Out4_im;  // sfix37_En22
  output  signed [36:0] Out5_re;  // sfix37_En22
  output  signed [36:0] Out5_im;  // sfix37_En22
  output  signed [36:0] Out6_re;  // sfix37_En22
  output  signed [36:0] Out6_im;  // sfix37_En22
  output  signed [36:0] Out7_re;  // sfix37_En22
  output  signed [36:0] Out7_im;  // sfix37_En22
  output  signed [36:0] Out8_re;  // sfix37_En22
  output  signed [36:0] Out8_im;  // sfix37_En22
  output  signed [36:0] Out9_re;  // sfix37_En22
  output  signed [36:0] Out9_im;  // sfix37_En22
  output  signed [36:0] Out10_re;  // sfix37_En22
  output  signed [36:0] Out10_im;  // sfix37_En22


  reg [7:0] Counter_Limited_out1;  // uint8
  wire signed [36:0] Direct_Lookup_Table_n_D_8_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_8_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_8_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_9_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_9_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_10_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_10_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_10_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_11_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_11_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_11_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication1_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication1_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_12_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_12_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_12_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_13_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_13_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_13_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication2_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication2_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_14_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_14_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_14_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_15_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_15_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_15_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication3_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication3_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_16_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_16_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_16_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_17_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_17_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_17_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication4_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication4_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_18_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_18_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_18_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_19_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_19_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_19_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication5_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication5_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_20_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_20_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_20_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_21_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_21_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_21_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication6_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication6_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_22_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_22_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_22_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_23_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_23_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_23_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication7_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication7_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_24_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_24_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_24_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_25_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_25_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_25_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication8_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication8_out1_im;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_26_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_26_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_26_out1_1;  // sfix37_En22
  wire signed [36:0] Direct_Lookup_Table_n_D_27_1 [0:5];  // sfix37_En22 [6]
  wire signed [36:0] Direct_Lookup_Table_n_D_27_out1;  // sfix37_En22
  reg signed [36:0] Direct_Lookup_Table_n_D_27_out1_1;  // sfix37_En22
  wire signed [36:0] Complex_multiplication9_out1_re;  // sfix37_En22
  wire signed [36:0] Complex_multiplication9_out1_im;  // sfix37_En22

  initial begin
    Direct_Lookup_Table_n_D_8_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_9_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_10_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_11_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_12_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_13_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_14_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_15_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_16_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_17_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_18_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_19_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_20_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_21_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_22_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_23_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_24_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_25_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_26_out1_1 = 37'sh0000000000;
    Direct_Lookup_Table_n_D_27_out1_1 = 37'sh0000000000;
  end

  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 5
  always @(posedge clk)
    begin : Counter_Limited_process
      if (reset_x == 1'b1) begin
        Counter_Limited_out1 <= 8'b00000000;
      end
      else begin
        if (enb) begin
          if (Counter_Limited_out1 >= 8'b00000101) begin
            Counter_Limited_out1 <= 8'b00000000;
          end
          else begin
            Counter_Limited_out1 <= Counter_Limited_out1 + 8'b00000001;
          end
        end
      end
    end



  assign Direct_Lookup_Table_n_D_8_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_8_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_8_1[2] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_8_1[3] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_8_1[4] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_8_1[5] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_8_out1 = Direct_Lookup_Table_n_D_8_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister18_process
      if (enb) begin
        Direct_Lookup_Table_n_D_8_out1_1 <= Direct_Lookup_Table_n_D_8_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_9_out1 = 37'sh0000000000;



  always @(posedge clk)
    begin : PipelineRegister19_process
      if (enb) begin
        Direct_Lookup_Table_n_D_9_out1_1 <= Direct_Lookup_Table_n_D_9_out1;
      end
    end



  Complex_multiplication_block16 u_Complex_multiplication (.clk(clk),
                                                           .reset_x(reset_x),
                                                           .enb(enb),
                                                           .In1_real(In1_re),  // sfix37_En22
                                                           .In1_imag(In1_im),  // sfix37_En22
                                                           .In2_real(Direct_Lookup_Table_n_D_8_out1_1),  // sfix37_En22
                                                           .in2_imag(Direct_Lookup_Table_n_D_9_out1_1),  // sfix37_En22
                                                           .Out1_re(Complex_multiplication_out1_re),  // sfix37_En22
                                                           .Out1_im(Complex_multiplication_out1_im)  // sfix37_En22
                                                           );

  assign Out1_re = Complex_multiplication_out1_re;

  assign Out1_im = Complex_multiplication_out1_im;

  assign Direct_Lookup_Table_n_D_10_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_10_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_10_1[2] = 37'sh00003F7ED0;
  assign Direct_Lookup_Table_n_D_10_1[3] = 37'sh00003DFD44;
  assign Direct_Lookup_Table_n_D_10_1[4] = 37'sh00003B8173;
  assign Direct_Lookup_Table_n_D_10_1[5] = 37'sh000038156A;
  assign Direct_Lookup_Table_n_D_10_out1 = Direct_Lookup_Table_n_D_10_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (enb) begin
        Direct_Lookup_Table_n_D_10_out1_1 <= Direct_Lookup_Table_n_D_10_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_11_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_11_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_11_1[2] = 37'sh1FFFF7FA8B;
  assign Direct_Lookup_Table_n_D_11_1[3] = 37'sh1FFFF01577;
  assign Direct_Lookup_Table_n_D_11_1[4] = 37'sh1FFFE870A4;
  assign Direct_Lookup_Table_n_D_11_1[5] = 37'sh1FFFE12AF1;
  assign Direct_Lookup_Table_n_D_11_out1 = Direct_Lookup_Table_n_D_11_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister1_process
      if (enb) begin
        Direct_Lookup_Table_n_D_11_out1_1 <= Direct_Lookup_Table_n_D_11_out1;
      end
    end



  Complex_multiplication1_block11 u_Complex_multiplication1 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_real(In2_re),  // sfix37_En22
                                                             .In1_imag(In2_im),  // sfix37_En22
                                                             .In2_real(Direct_Lookup_Table_n_D_10_out1_1),  // sfix37_En22
                                                             .in2_imag(Direct_Lookup_Table_n_D_11_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication1_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication1_out1_im)  // sfix37_En22
                                                             );

  assign Out2_re = Complex_multiplication1_out1_re;

  assign Out2_im = Complex_multiplication1_out1_im;

  assign Direct_Lookup_Table_n_D_12_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_12_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_12_1[2] = 37'sh00003B8173;
  assign Direct_Lookup_Table_n_D_12_1[3] = 37'sh000038156A;
  assign Direct_Lookup_Table_n_D_12_1[4] = 37'sh00002EA76E;
  assign Direct_Lookup_Table_n_D_12_1[5] = 37'sh0000224AFD;
  assign Direct_Lookup_Table_n_D_12_out1 = Direct_Lookup_Table_n_D_12_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister2_process
      if (enb) begin
        Direct_Lookup_Table_n_D_12_out1_1 <= Direct_Lookup_Table_n_D_12_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_13_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_13_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_13_1[2] = 37'sh1FFFF01577;
  assign Direct_Lookup_Table_n_D_13_1[3] = 37'sh1FFFE12AF1;
  assign Direct_Lookup_Table_n_D_13_1[4] = 37'sh1FFFD43062;
  assign Direct_Lookup_Table_n_D_13_1[5] = 37'sh1FFFC9F688;
  assign Direct_Lookup_Table_n_D_13_out1 = Direct_Lookup_Table_n_D_13_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister3_process
      if (enb) begin
        Direct_Lookup_Table_n_D_13_out1_1 <= Direct_Lookup_Table_n_D_13_out1;
      end
    end



  Complex_multiplication2_block11 u_Complex_multiplication2 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_real(In3_re),  // sfix37_En22
                                                             .In1_imag(In3_im),  // sfix37_En22
                                                             .In2_real(Direct_Lookup_Table_n_D_12_out1_1),  // sfix37_En22
                                                             .in2_imag(Direct_Lookup_Table_n_D_13_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication2_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication2_out1_im)  // sfix37_En22
                                                             );

  assign Out3_re = Complex_multiplication2_out1_re;

  assign Out3_im = Complex_multiplication2_out1_im;

  assign Direct_Lookup_Table_n_D_14_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_14_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_14_1[2] = 37'sh00003B8173;
  assign Direct_Lookup_Table_n_D_14_1[3] = 37'sh00002EA76E;
  assign Direct_Lookup_Table_n_D_14_1[4] = 37'sh00001B3FF7;
  assign Direct_Lookup_Table_n_D_14_1[5] = 37'sh00000404C5;
  assign Direct_Lookup_Table_n_D_14_out1 = Direct_Lookup_Table_n_D_14_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister4_process
      if (enb) begin
        Direct_Lookup_Table_n_D_14_out1_1 <= Direct_Lookup_Table_n_D_14_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_15_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_15_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_15_1[2] = 37'sh1FFFE870A4;
  assign Direct_Lookup_Table_n_D_15_1[3] = 37'sh1FFFD43062;
  assign Direct_Lookup_Table_n_D_15_1[4] = 37'sh1FFFC61750;
  assign Direct_Lookup_Table_n_D_15_1[5] = 37'sh1FFFC02053;
  assign Direct_Lookup_Table_n_D_15_out1 = Direct_Lookup_Table_n_D_15_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister5_process
      if (enb) begin
        Direct_Lookup_Table_n_D_15_out1_1 <= Direct_Lookup_Table_n_D_15_out1;
      end
    end



  Complex_multiplication3_block11 u_Complex_multiplication3 (.clk(clk),
                                                             .reset_x(reset_x),
                                                             .enb(enb),
                                                             .In1_real(In4_re),  // sfix37_En22
                                                             .In1_imag(In4_im),  // sfix37_En22
                                                             .In2_real(Direct_Lookup_Table_n_D_14_out1_1),  // sfix37_En22
                                                             .in2_imag(Direct_Lookup_Table_n_D_15_out1_1),  // sfix37_En22
                                                             .Out1_re(Complex_multiplication3_out1_re),  // sfix37_En22
                                                             .Out1_im(Complex_multiplication3_out1_im)  // sfix37_En22
                                                             );

  assign Out4_re = Complex_multiplication3_out1_re;

  assign Out4_im = Complex_multiplication3_out1_im;

  assign Direct_Lookup_Table_n_D_16_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_16_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_16_1[2] = 37'sh000038156A;
  assign Direct_Lookup_Table_n_D_16_1[3] = 37'sh0000224AFD;
  assign Direct_Lookup_Table_n_D_16_1[4] = 37'sh00000404C5;
  assign Direct_Lookup_Table_n_D_16_1[5] = 37'sh1FFFE4C009;
  assign Direct_Lookup_Table_n_D_16_out1 = Direct_Lookup_Table_n_D_16_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister6_process
      if (enb) begin
        Direct_Lookup_Table_n_D_16_out1_1 <= Direct_Lookup_Table_n_D_16_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_17_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_17_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_17_1[2] = 37'sh1FFFE12AF1;
  assign Direct_Lookup_Table_n_D_17_1[3] = 37'sh1FFFC9F688;
  assign Direct_Lookup_Table_n_D_17_1[4] = 37'sh1FFFC02053;
  assign Direct_Lookup_Table_n_D_17_1[5] = 37'sh1FFFC61750;
  assign Direct_Lookup_Table_n_D_17_out1 = Direct_Lookup_Table_n_D_17_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister7_process
      if (enb) begin
        Direct_Lookup_Table_n_D_17_out1_1 <= Direct_Lookup_Table_n_D_17_out1;
      end
    end



  Complex_multiplication4 u_Complex_multiplication4 (.clk(clk),
                                                     .reset_x(reset_x),
                                                     .enb(enb),
                                                     .In1_real(In5_re),  // sfix37_En22
                                                     .In1_imag(In5_im),  // sfix37_En22
                                                     .In2_real(Direct_Lookup_Table_n_D_16_out1_1),  // sfix37_En22
                                                     .in2_imag(Direct_Lookup_Table_n_D_17_out1_1),  // sfix37_En22
                                                     .Out1_re(Complex_multiplication4_out1_re),  // sfix37_En22
                                                     .Out1_im(Complex_multiplication4_out1_im)  // sfix37_En22
                                                     );

  assign Out5_re = Complex_multiplication4_out1_re;

  assign Out5_im = Complex_multiplication4_out1_im;

  assign Direct_Lookup_Table_n_D_18_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_18_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_18_1[2] = 37'sh000033C6EF;
  assign Direct_Lookup_Table_n_D_18_1[3] = 37'sh000013C6EF;
  assign Direct_Lookup_Table_n_D_18_1[4] = 37'sh1FFFEC3911;
  assign Direct_Lookup_Table_n_D_18_1[5] = 37'sh1FFFCC3911;
  assign Direct_Lookup_Table_n_D_18_out1 = Direct_Lookup_Table_n_D_18_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister8_process
      if (enb) begin
        Direct_Lookup_Table_n_D_18_out1_1 <= Direct_Lookup_Table_n_D_18_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_19_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_19_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_19_1[2] = 37'sh1FFFDA61BB;
  assign Direct_Lookup_Table_n_D_19_1[3] = 37'sh1FFFC321E2;
  assign Direct_Lookup_Table_n_D_19_1[4] = 37'sh1FFFC321E2;
  assign Direct_Lookup_Table_n_D_19_1[5] = 37'sh1FFFDA61BB;
  assign Direct_Lookup_Table_n_D_19_out1 = Direct_Lookup_Table_n_D_19_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister9_process
      if (enb) begin
        Direct_Lookup_Table_n_D_19_out1_1 <= Direct_Lookup_Table_n_D_19_out1;
      end
    end



  Complex_multiplication5 u_Complex_multiplication5 (.clk(clk),
                                                     .reset_x(reset_x),
                                                     .enb(enb),
                                                     .In1_real(In6_re),  // sfix37_En22
                                                     .In1_imag(In6_im),  // sfix37_En22
                                                     .In2_real(Direct_Lookup_Table_n_D_18_out1_1),  // sfix37_En22
                                                     .in2_imag(Direct_Lookup_Table_n_D_19_out1_1),  // sfix37_En22
                                                     .Out1_re(Complex_multiplication5_out1_re),  // sfix37_En22
                                                     .Out1_im(Complex_multiplication5_out1_im)  // sfix37_En22
                                                     );

  assign Out6_re = Complex_multiplication5_out1_re;

  assign Out6_im = Complex_multiplication5_out1_im;

  assign Direct_Lookup_Table_n_D_20_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_20_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_20_1[2] = 37'sh00002EA76E;
  assign Direct_Lookup_Table_n_D_20_1[3] = 37'sh00000404C5;
  assign Direct_Lookup_Table_n_D_20_1[4] = 37'sh1FFFD73472;
  assign Direct_Lookup_Table_n_D_20_1[5] = 37'sh1FFFC08130;
  assign Direct_Lookup_Table_n_D_20_out1 = Direct_Lookup_Table_n_D_20_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister10_process
      if (enb) begin
        Direct_Lookup_Table_n_D_20_out1_1 <= Direct_Lookup_Table_n_D_20_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_21_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_21_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_21_1[2] = 37'sh1FFFD43062;
  assign Direct_Lookup_Table_n_D_21_1[3] = 37'sh1FFFC02053;
  assign Direct_Lookup_Table_n_D_21_1[4] = 37'sh1FFFCEAFEA;
  assign Direct_Lookup_Table_n_D_21_1[5] = 37'sh1FFFF7FA8B;
  assign Direct_Lookup_Table_n_D_21_out1 = Direct_Lookup_Table_n_D_21_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister11_process
      if (enb) begin
        Direct_Lookup_Table_n_D_21_out1_1 <= Direct_Lookup_Table_n_D_21_out1;
      end
    end



  Complex_multiplication6 u_Complex_multiplication6 (.clk(clk),
                                                     .reset_x(reset_x),
                                                     .enb(enb),
                                                     .In1_real(In7_re),  // sfix37_En22
                                                     .In1_imag(In7_im),  // sfix37_En22
                                                     .In2_real(Direct_Lookup_Table_n_D_20_out1_1),  // sfix37_En22
                                                     .in2_imag(Direct_Lookup_Table_n_D_21_out1_1),  // sfix37_En22
                                                     .Out1_re(Complex_multiplication6_out1_re),  // sfix37_En22
                                                     .Out1_im(Complex_multiplication6_out1_im)  // sfix37_En22
                                                     );

  assign Out7_re = Complex_multiplication6_out1_re;

  assign Out7_im = Complex_multiplication6_out1_im;

  assign Direct_Lookup_Table_n_D_22_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_22_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_22_1[2] = 37'sh000028CB8E;
  assign Direct_Lookup_Table_n_D_22_1[3] = 37'sh1FFFF401F3;
  assign Direct_Lookup_Table_n_D_22_1[4] = 37'sh1FFFC7EA96;
  assign Direct_Lookup_Table_n_D_22_1[5] = 37'sh1FFFC47E8D;
  assign Direct_Lookup_Table_n_D_22_out1 = Direct_Lookup_Table_n_D_22_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister12_process
      if (enb) begin
        Direct_Lookup_Table_n_D_22_out1_1 <= Direct_Lookup_Table_n_D_22_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_23_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_23_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_23_1[2] = 37'sh1FFFCEAFEA;
  assign Direct_Lookup_Table_n_D_23_1[3] = 37'sh1FFFC12236;
  assign Direct_Lookup_Table_n_D_23_1[4] = 37'sh1FFFE12AF1;
  assign Direct_Lookup_Table_n_D_23_1[5] = 37'sh0000178F5C;
  assign Direct_Lookup_Table_n_D_23_out1 = Direct_Lookup_Table_n_D_23_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister13_process
      if (enb) begin
        Direct_Lookup_Table_n_D_23_out1_1 <= Direct_Lookup_Table_n_D_23_out1;
      end
    end



  Complex_multiplication7 u_Complex_multiplication7 (.clk(clk),
                                                     .reset_x(reset_x),
                                                     .enb(enb),
                                                     .In1_real(In8_re),  // sfix37_En22
                                                     .In1_imag(In8_im),  // sfix37_En22
                                                     .In2_real(Direct_Lookup_Table_n_D_22_out1_1),  // sfix37_En22
                                                     .in2_imag(Direct_Lookup_Table_n_D_23_out1_1),  // sfix37_En22
                                                     .Out1_re(Complex_multiplication7_out1_re),  // sfix37_En22
                                                     .Out1_im(Complex_multiplication7_out1_im)  // sfix37_En22
                                                     );

  assign Out8_re = Complex_multiplication7_out1_re;

  assign Out8_im = Complex_multiplication7_out1_im;

  assign Direct_Lookup_Table_n_D_24_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_24_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_24_1[2] = 37'sh0000224AFD;
  assign Direct_Lookup_Table_n_D_24_1[3] = 37'sh1FFFE4C009;
  assign Direct_Lookup_Table_n_D_24_1[4] = 37'sh1FFFC08130;
  assign Direct_Lookup_Table_n_D_24_1[5] = 37'sh1FFFD73472;
  assign Direct_Lookup_Table_n_D_24_out1 = Direct_Lookup_Table_n_D_24_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister14_process
      if (enb) begin
        Direct_Lookup_Table_n_D_24_out1_1 <= Direct_Lookup_Table_n_D_24_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_25_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_25_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_25_1[2] = 37'sh1FFFC9F688;
  assign Direct_Lookup_Table_n_D_25_1[3] = 37'sh1FFFC61750;
  assign Direct_Lookup_Table_n_D_25_1[4] = 37'sh1FFFF7FA8B;
  assign Direct_Lookup_Table_n_D_25_1[5] = 37'sh0000315016;
  assign Direct_Lookup_Table_n_D_25_out1 = Direct_Lookup_Table_n_D_25_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister15_process
      if (enb) begin
        Direct_Lookup_Table_n_D_25_out1_1 <= Direct_Lookup_Table_n_D_25_out1;
      end
    end



  Complex_multiplication8 u_Complex_multiplication8 (.clk(clk),
                                                     .reset_x(reset_x),
                                                     .enb(enb),
                                                     .In1_real(In9_re),  // sfix37_En22
                                                     .In1_imag(In9_im),  // sfix37_En22
                                                     .In2_real(Direct_Lookup_Table_n_D_24_out1_1),  // sfix37_En22
                                                     .in2_imag(Direct_Lookup_Table_n_D_25_out1_1),  // sfix37_En22
                                                     .Out1_re(Complex_multiplication8_out1_re),  // sfix37_En22
                                                     .Out1_im(Complex_multiplication8_out1_im)  // sfix37_En22
                                                     );

  assign Out9_re = Complex_multiplication8_out1_re;

  assign Out9_im = Complex_multiplication8_out1_im;

  assign Direct_Lookup_Table_n_D_26_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_26_1[1] = 37'sh0000400000;
  assign Direct_Lookup_Table_n_D_26_1[2] = 37'sh00001B3FF7;
  assign Direct_Lookup_Table_n_D_26_1[3] = 37'sh1FFFD73472;
  assign Direct_Lookup_Table_n_D_26_1[4] = 37'sh1FFFC202BC;
  assign Direct_Lookup_Table_n_D_26_1[5] = 37'sh1FFFF401F3;
  assign Direct_Lookup_Table_n_D_26_out1 = Direct_Lookup_Table_n_D_26_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister16_process
      if (enb) begin
        Direct_Lookup_Table_n_D_26_out1_1 <= Direct_Lookup_Table_n_D_26_out1;
      end
    end



  assign Direct_Lookup_Table_n_D_27_1[0] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_27_1[1] = 37'sh0000000000;
  assign Direct_Lookup_Table_n_D_27_1[2] = 37'sh1FFFC61750;
  assign Direct_Lookup_Table_n_D_27_1[3] = 37'sh1FFFCEAFEA;
  assign Direct_Lookup_Table_n_D_27_1[4] = 37'sh00000FEA89;
  assign Direct_Lookup_Table_n_D_27_1[5] = 37'sh00003EDDCA;
  assign Direct_Lookup_Table_n_D_27_out1 = Direct_Lookup_Table_n_D_27_1[Counter_Limited_out1];



  always @(posedge clk)
    begin : PipelineRegister17_process
      if (enb) begin
        Direct_Lookup_Table_n_D_27_out1_1 <= Direct_Lookup_Table_n_D_27_out1;
      end
    end



  Complex_multiplication9 u_Complex_multiplication9 (.clk(clk),
                                                     .reset_x(reset_x),
                                                     .enb(enb),
                                                     .In1_real(In10_re),  // sfix37_En22
                                                     .In1_imag(In10_im),  // sfix37_En22
                                                     .In2_real(Direct_Lookup_Table_n_D_26_out1_1),  // sfix37_En22
                                                     .in2_imag(Direct_Lookup_Table_n_D_27_out1_1),  // sfix37_En22
                                                     .Out1_re(Complex_multiplication9_out1_re),  // sfix37_En22
                                                     .Out1_im(Complex_multiplication9_out1_im)  // sfix37_En22
                                                     );

  assign Out10_re = Complex_multiplication9_out1_re;

  assign Out10_im = Complex_multiplication9_out1_im;

endmodule  // W50
