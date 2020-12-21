// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\switching_DFT50_swapping_values.v
// Created: 2020-12-20 13:10:05
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: switching_DFT50_swapping_values
// Source Path: newhope_cambios/FDHT/DFT_2/switching_DFT50_swapping_values
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module switching_DFT50_swapping_values
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
           In11_re,
           In11_im,
           In12_re,
           In12_im,
           In13_re,
           In13_im,
           In14_re,
           In14_im,
           In15_re,
           In15_im,
           In16_re,
           In16_im,
           In17_re,
           In17_im,
           In18_re,
           In18_im,
           In19_re,
           In19_im,
           In20_re,
           In20_im,
           In21_re,
           In21_im,
           In22_re,
           In22_im,
           In23_re,
           In23_im,
           In24_re,
           In24_im,
           In25_re,
           In25_im,
           In26,
           Out1_re,
           Out1_im,
           Out2_re,
           Out2_im,
           Out3_re,
           Out3_im,
           Out4_re,
           Out4_im,
           Out5_re,
           Out5_im);


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
  input   signed [36:0] In11_re;  // sfix37_En22
  input   signed [36:0] In11_im;  // sfix37_En22
  input   signed [36:0] In12_re;  // sfix37_En22
  input   signed [36:0] In12_im;  // sfix37_En22
  input   signed [36:0] In13_re;  // sfix37_En22
  input   signed [36:0] In13_im;  // sfix37_En22
  input   signed [36:0] In14_re;  // sfix37_En22
  input   signed [36:0] In14_im;  // sfix37_En22
  input   signed [36:0] In15_re;  // sfix37_En22
  input   signed [36:0] In15_im;  // sfix37_En22
  input   signed [36:0] In16_re;  // sfix37_En22
  input   signed [36:0] In16_im;  // sfix37_En22
  input   signed [36:0] In17_re;  // sfix37_En22
  input   signed [36:0] In17_im;  // sfix37_En22
  input   signed [36:0] In18_re;  // sfix37_En22
  input   signed [36:0] In18_im;  // sfix37_En22
  input   signed [36:0] In19_re;  // sfix37_En22
  input   signed [36:0] In19_im;  // sfix37_En22
  input   signed [36:0] In20_re;  // sfix37_En22
  input   signed [36:0] In20_im;  // sfix37_En22
  input   signed [36:0] In21_re;  // sfix37_En22
  input   signed [36:0] In21_im;  // sfix37_En22
  input   signed [36:0] In22_re;  // sfix37_En22
  input   signed [36:0] In22_im;  // sfix37_En22
  input   signed [36:0] In23_re;  // sfix37_En22
  input   signed [36:0] In23_im;  // sfix37_En22
  input   signed [36:0] In24_re;  // sfix37_En22
  input   signed [36:0] In24_im;  // sfix37_En22
  input   signed [36:0] In25_re;  // sfix37_En22
  input   signed [36:0] In25_im;  // sfix37_En22
  input   [7:0] In26;  // uint8
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


  reg [7:0] reduced_reg [0:9];  // ufix8 [10]
  wire [7:0] reduced_reg_next [0:9];  // ufix8 [10]
  wire [7:0] In26_1;  // uint8
  wire signed [36:0] Constant5_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch1_out1;  // sfix37_En22
  reg [7:0] reduced_reg_1 [0:1];  // ufix8 [2]
  wire [7:0] reduced_reg_next_1 [0:1];  // ufix8 [2]
  wire [7:0] In26_2;  // uint8
  wire signed [36:0] Constant4_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch2_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch3_out1;  // sfix37_En22
  wire signed [36:0] Constant6_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch4_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch5_out1;  // sfix37_En22
  reg [7:0] reduced_reg_2 [0:1];  // ufix8 [2]
  wire [7:0] reduced_reg_next_2 [0:1];  // ufix8 [2]
  wire [7:0] In26_3;  // uint8
  wire signed [36:0] Constant7_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch6_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch7_out1;  // sfix37_En22
  wire signed [36:0] Constant8_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch8_out1;  // sfix37_En22
  wire signed [36:0] Multiport_Switch9_out1;  // sfix37_En22


  always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        reduced_reg[0] <= 8'b00000000;
        reduced_reg[1] <= 8'b00000000;
        reduced_reg[2] <= 8'b00000000;
        reduced_reg[3] <= 8'b00000000;
        reduced_reg[4] <= 8'b00000000;
        reduced_reg[5] <= 8'b00000000;
        reduced_reg[6] <= 8'b00000000;
        reduced_reg[7] <= 8'b00000000;
        reduced_reg[8] <= 8'b00000000;
        reduced_reg[9] <= 8'b00000000;
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
        end
      end
    end

  assign In26_1 = reduced_reg[9];
  assign reduced_reg_next[0] = In26;
  assign reduced_reg_next[1] = reduced_reg[0];
  assign reduced_reg_next[2] = reduced_reg[1];
  assign reduced_reg_next[3] = reduced_reg[2];
  assign reduced_reg_next[4] = reduced_reg[3];
  assign reduced_reg_next[5] = reduced_reg[4];
  assign reduced_reg_next[6] = reduced_reg[5];
  assign reduced_reg_next[7] = reduced_reg[6];
  assign reduced_reg_next[8] = reduced_reg[7];
  assign reduced_reg_next[9] = reduced_reg[8];



  assign Constant5_out1 = 37'sh0000000000;



  assign Multiport_Switch_out1 = (In26_1 == 8'b00000000 ? Constant5_out1 :
              (In26_1 == 8'b00000001 ? Constant5_out1 :
              (In26_1 == 8'b00000010 ? Constant5_out1 :
              (In26_1 == 8'b00000011 ? Constant5_out1 :
              (In26_1 == 8'b00000100 ? Constant5_out1 :
              (In26_1 == 8'b00000101 ? Constant5_out1 :
              (In26_1 == 8'b00000110 ? Constant5_out1 :
              (In26_1 == 8'b00000111 ? Constant5_out1 :
              (In26_1 == 8'b00001000 ? Constant5_out1 :
              (In26_1 == 8'b00001001 ? Constant5_out1 :
              (In26_1 == 8'b00001010 ? In1_re :
              (In26_1 == 8'b00001011 ? In2_re :
              (In26_1 == 8'b00001100 ? In3_re :
              (In26_1 == 8'b00001101 ? In4_re :
              In5_re))))))))))))));



  assign Out1_re = Multiport_Switch_out1;

  assign Multiport_Switch1_out1 = (In26_1 == 8'b00000000 ? Constant5_out1 :
              (In26_1 == 8'b00000001 ? Constant5_out1 :
              (In26_1 == 8'b00000010 ? Constant5_out1 :
              (In26_1 == 8'b00000011 ? Constant5_out1 :
              (In26_1 == 8'b00000100 ? Constant5_out1 :
              (In26_1 == 8'b00000101 ? Constant5_out1 :
              (In26_1 == 8'b00000110 ? Constant5_out1 :
              (In26_1 == 8'b00000111 ? Constant5_out1 :
              (In26_1 == 8'b00001000 ? Constant5_out1 :
              (In26_1 == 8'b00001001 ? Constant5_out1 :
              (In26_1 == 8'b00001010 ? In1_im :
              (In26_1 == 8'b00001011 ? In2_im :
              (In26_1 == 8'b00001100 ? In3_im :
              (In26_1 == 8'b00001101 ? In4_im :
              In5_im))))))))))))));



  assign Out1_im = Multiport_Switch1_out1;

  always @(posedge clk)
    begin : reduced_1_process
      if (reset_x == 1'b1) begin
        reduced_reg_1[0] <= 8'b00000000;
        reduced_reg_1[1] <= 8'b00000000;
      end
      else begin
        if (enb) begin
          reduced_reg_1[0] <= reduced_reg_next_1[0];
          reduced_reg_1[1] <= reduced_reg_next_1[1];
        end
      end
    end

  assign In26_2 = reduced_reg_1[1];
  assign reduced_reg_next_1[0] = In26_1;
  assign reduced_reg_next_1[1] = reduced_reg_1[0];



  assign Constant4_out1 = 37'sh0000000000;



  assign Multiport_Switch2_out1 = (In26_2 == 8'b00000000 ? Constant4_out1 :
              (In26_2 == 8'b00000001 ? Constant4_out1 :
              (In26_2 == 8'b00000010 ? Constant4_out1 :
              (In26_2 == 8'b00000011 ? Constant4_out1 :
              (In26_2 == 8'b00000100 ? Constant4_out1 :
              (In26_2 == 8'b00000101 ? Constant4_out1 :
              (In26_2 == 8'b00000110 ? Constant4_out1 :
              (In26_2 == 8'b00000111 ? Constant4_out1 :
              (In26_2 == 8'b00001000 ? Constant4_out1 :
              (In26_2 == 8'b00001001 ? Constant4_out1 :
              (In26_2 == 8'b00001010 ? In6_re :
              (In26_2 == 8'b00001011 ? In7_re :
              (In26_2 == 8'b00001100 ? In8_re :
              (In26_2 == 8'b00001101 ? In9_re :
              In10_re))))))))))))));



  assign Out2_re = Multiport_Switch2_out1;

  assign Multiport_Switch3_out1 = (In26_2 == 8'b00000000 ? Constant4_out1 :
              (In26_2 == 8'b00000001 ? Constant4_out1 :
              (In26_2 == 8'b00000010 ? Constant4_out1 :
              (In26_2 == 8'b00000011 ? Constant4_out1 :
              (In26_2 == 8'b00000100 ? Constant4_out1 :
              (In26_2 == 8'b00000101 ? Constant4_out1 :
              (In26_2 == 8'b00000110 ? Constant4_out1 :
              (In26_2 == 8'b00000111 ? Constant4_out1 :
              (In26_2 == 8'b00001000 ? Constant4_out1 :
              (In26_2 == 8'b00001001 ? Constant4_out1 :
              (In26_2 == 8'b00001010 ? In6_im :
              (In26_2 == 8'b00001011 ? In7_im :
              (In26_2 == 8'b00001100 ? In8_im :
              (In26_2 == 8'b00001101 ? In9_im :
              In10_im))))))))))))));



  assign Out2_im = Multiport_Switch3_out1;

  assign Constant6_out1 = 37'sh0000000000;



  assign Multiport_Switch4_out1 = (In26_2 == 8'b00000000 ? Constant6_out1 :
              (In26_2 == 8'b00000001 ? Constant6_out1 :
              (In26_2 == 8'b00000010 ? Constant6_out1 :
              (In26_2 == 8'b00000011 ? Constant6_out1 :
              (In26_2 == 8'b00000100 ? Constant6_out1 :
              (In26_2 == 8'b00000101 ? Constant6_out1 :
              (In26_2 == 8'b00000110 ? Constant6_out1 :
              (In26_2 == 8'b00000111 ? Constant6_out1 :
              (In26_2 == 8'b00001000 ? Constant6_out1 :
              (In26_2 == 8'b00001001 ? Constant6_out1 :
              (In26_2 == 8'b00001010 ? In11_re :
              (In26_2 == 8'b00001011 ? In12_re :
              (In26_2 == 8'b00001100 ? In13_re :
              (In26_2 == 8'b00001101 ? In14_re :
              In15_re))))))))))))));



  assign Out3_re = Multiport_Switch4_out1;

  assign Multiport_Switch5_out1 = (In26_2 == 8'b00000000 ? Constant6_out1 :
              (In26_2 == 8'b00000001 ? Constant6_out1 :
              (In26_2 == 8'b00000010 ? Constant6_out1 :
              (In26_2 == 8'b00000011 ? Constant6_out1 :
              (In26_2 == 8'b00000100 ? Constant6_out1 :
              (In26_2 == 8'b00000101 ? Constant6_out1 :
              (In26_2 == 8'b00000110 ? Constant6_out1 :
              (In26_2 == 8'b00000111 ? Constant6_out1 :
              (In26_2 == 8'b00001000 ? Constant6_out1 :
              (In26_2 == 8'b00001001 ? Constant6_out1 :
              (In26_2 == 8'b00001010 ? In11_im :
              (In26_2 == 8'b00001011 ? In12_im :
              (In26_2 == 8'b00001100 ? In13_im :
              (In26_2 == 8'b00001101 ? In14_im :
              In15_im))))))))))))));



  assign Out3_im = Multiport_Switch5_out1;

  always @(posedge clk)
    begin : reduced_2_process
      if (reset_x == 1'b1) begin
        reduced_reg_2[0] <= 8'b00000000;
        reduced_reg_2[1] <= 8'b00000000;
      end
      else begin
        if (enb) begin
          reduced_reg_2[0] <= reduced_reg_next_2[0];
          reduced_reg_2[1] <= reduced_reg_next_2[1];
        end
      end
    end

  assign In26_3 = reduced_reg_2[1];
  assign reduced_reg_next_2[0] = In26_2;
  assign reduced_reg_next_2[1] = reduced_reg_2[0];



  assign Constant7_out1 = 37'sh0000000000;



  assign Multiport_Switch6_out1 = (In26_3 == 8'b00000000 ? Constant7_out1 :
              (In26_3 == 8'b00000001 ? Constant7_out1 :
              (In26_3 == 8'b00000010 ? Constant7_out1 :
              (In26_3 == 8'b00000011 ? Constant7_out1 :
              (In26_3 == 8'b00000100 ? Constant7_out1 :
              (In26_3 == 8'b00000101 ? Constant7_out1 :
              (In26_3 == 8'b00000110 ? Constant7_out1 :
              (In26_3 == 8'b00000111 ? Constant7_out1 :
              (In26_3 == 8'b00001000 ? Constant7_out1 :
              (In26_3 == 8'b00001001 ? Constant7_out1 :
              (In26_3 == 8'b00001010 ? In16_re :
              (In26_3 == 8'b00001011 ? In17_re :
              (In26_3 == 8'b00001100 ? In18_re :
              (In26_3 == 8'b00001101 ? In19_re :
              In20_re))))))))))))));



  assign Out4_re = Multiport_Switch6_out1;

  assign Multiport_Switch7_out1 = (In26_3 == 8'b00000000 ? Constant7_out1 :
              (In26_3 == 8'b00000001 ? Constant7_out1 :
              (In26_3 == 8'b00000010 ? Constant7_out1 :
              (In26_3 == 8'b00000011 ? Constant7_out1 :
              (In26_3 == 8'b00000100 ? Constant7_out1 :
              (In26_3 == 8'b00000101 ? Constant7_out1 :
              (In26_3 == 8'b00000110 ? Constant7_out1 :
              (In26_3 == 8'b00000111 ? Constant7_out1 :
              (In26_3 == 8'b00001000 ? Constant7_out1 :
              (In26_3 == 8'b00001001 ? Constant7_out1 :
              (In26_3 == 8'b00001010 ? In16_im :
              (In26_3 == 8'b00001011 ? In17_im :
              (In26_3 == 8'b00001100 ? In18_im :
              (In26_3 == 8'b00001101 ? In19_im :
              In20_im))))))))))))));



  assign Out4_im = Multiport_Switch7_out1;

  assign Constant8_out1 = 37'sh0000000000;



  assign Multiport_Switch8_out1 = (In26_2 == 8'b00000000 ? Constant8_out1 :
              (In26_2 == 8'b00000001 ? Constant8_out1 :
              (In26_2 == 8'b00000010 ? Constant8_out1 :
              (In26_2 == 8'b00000011 ? Constant8_out1 :
              (In26_2 == 8'b00000100 ? Constant8_out1 :
              (In26_2 == 8'b00000101 ? Constant8_out1 :
              (In26_2 == 8'b00000110 ? Constant8_out1 :
              (In26_2 == 8'b00000111 ? Constant8_out1 :
              (In26_2 == 8'b00001000 ? Constant8_out1 :
              (In26_2 == 8'b00001001 ? Constant8_out1 :
              (In26_2 == 8'b00001010 ? In21_re :
              (In26_2 == 8'b00001011 ? In22_re :
              (In26_2 == 8'b00001100 ? In23_re :
              (In26_2 == 8'b00001101 ? In24_re :
              In25_re))))))))))))));



  assign Out5_re = Multiport_Switch8_out1;

  assign Multiport_Switch9_out1 = (In26_2 == 8'b00000000 ? Constant8_out1 :
              (In26_2 == 8'b00000001 ? Constant8_out1 :
              (In26_2 == 8'b00000010 ? Constant8_out1 :
              (In26_2 == 8'b00000011 ? Constant8_out1 :
              (In26_2 == 8'b00000100 ? Constant8_out1 :
              (In26_2 == 8'b00000101 ? Constant8_out1 :
              (In26_2 == 8'b00000110 ? Constant8_out1 :
              (In26_2 == 8'b00000111 ? Constant8_out1 :
              (In26_2 == 8'b00001000 ? Constant8_out1 :
              (In26_2 == 8'b00001001 ? Constant8_out1 :
              (In26_2 == 8'b00001010 ? In21_im :
              (In26_2 == 8'b00001011 ? In22_im :
              (In26_2 == 8'b00001100 ? In23_im :
              (In26_2 == 8'b00001101 ? In24_im :
              In25_im))))))))))))));



  assign Out5_im = Multiport_Switch9_out1;

endmodule  // switching_DFT50_swapping_values
