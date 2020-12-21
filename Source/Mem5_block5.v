// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\Mem5_block5.v
// Created: 2020-12-20 13:10:05
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Mem5_block5
// Source Path: newhope_cambios/FDHT/taking_imaginary_part/Mem5
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Mem5_block5
          (clk,
           reset_x,
           enb,
           In1,
           In2,
           Out1,
           Out2,
           Out3,
           Out4,
           Out5);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [14:0] In1;  // sfix15_En5
  input   [7:0] In2;  // uint8
  output  signed [14:0] Out1;  // sfix15_En5
  output  signed [14:0] Out2;  // sfix15_En5
  output  signed [14:0] Out3;  // sfix15_En5
  output  signed [14:0] Out4;  // sfix15_En5
  output  signed [14:0] Out5;  // sfix15_En5


  wire signed [14:0] mem1_out1;  // sfix15_En5
  wire signed [14:0] mem2_out1;  // sfix15_En5
  wire signed [14:0] mem3_out1;  // sfix15_En5
  wire signed [14:0] mem4_out1;  // sfix15_En5
  wire signed [14:0] mem5_out1;  // sfix15_En5


  mem1_block5 u_mem1 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(In1),  // sfix15_En5
                      .In2(In2),  // uint8
                      .Out1(mem1_out1)  // sfix15_En5
                      );

  assign Out1 = mem1_out1;

  mem2_block5 u_mem2 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(In1),  // sfix15_En5
                      .In2(In2),  // uint8
                      .Out1(mem2_out1)  // sfix15_En5
                      );

  assign Out2 = mem2_out1;

  mem3_block5 u_mem3 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(In1),  // sfix15_En5
                      .In2(In2),  // uint8
                      .Out1(mem3_out1)  // sfix15_En5
                      );

  assign Out3 = mem3_out1;

  mem4_block5 u_mem4 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(In1),  // sfix15_En5
                      .In2(In2),  // uint8
                      .Out1(mem4_out1)  // sfix15_En5
                      );

  assign Out4 = mem4_out1;

  mem5_block4 u_mem5 (.clk(clk),
                      .reset_x(reset_x),
                      .enb(enb),
                      .In1(In1),  // sfix15_En5
                      .In2(In2),  // uint8
                      .Out1(mem5_out1)  // sfix15_En5
                      );

  assign Out5 = mem5_out1;

endmodule  // Mem5_block5

