// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\FDHT.v
// Created: 2020-12-08 16:13:17
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.015625
// Target subsystem base rate: 0.015625
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.015625
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// out1                          ce_out        0.015625
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FDHT
// Source Path: FDHT_N/FDHT
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FDHT
          (clk,
           reset_x,
           clk_enable,
           in1,
           ce_out,
           out1);


  input   clk;
  input   reset_x;
  input   clk_enable;
  input   signed [14:0] in1;  // sfix15_En5
  output  ce_out;
  output  signed [14:0] out1;  // sfix15_En5

  wire enb;
  reg [7:0] Counter_Limited1_out1;  // uint8
  wire signed [14:0] parallel_serial1_out1;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out2;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out3;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out4;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out5;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out6;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out7;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out8;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out9;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out10;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out11;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out12;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out13;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out14;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out15;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out16;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out17;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out18;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out19;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out20;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out21;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out22;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out23;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out24;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out25;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out26;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out27;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out28;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out29;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out30;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out31;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out32;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out33;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out34;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out35;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out36;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out37;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out38;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out39;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out40;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out41;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out42;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out43;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out44;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out45;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out46;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out47;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out48;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out49;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out50;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out51;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out52;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out53;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out54;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out55;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out56;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out57;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out58;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out59;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out60;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out61;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out62;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out63;  // sfix15_En5
  wire signed [14:0] parallel_serial1_out64;  // sfix15_En5
  wire signed [14:0] memory_out1;  // sfix15_En5
  wire signed [14:0] memory_out2;  // sfix15_En5
  wire signed [14:0] memory_out3;  // sfix15_En5
  wire signed [14:0] memory_out4;  // sfix15_En5
  wire signed [14:0] memory_out5;  // sfix15_En5
  wire signed [14:0] memory_out6;  // sfix15_En5
  wire signed [14:0] memory_out7;  // sfix15_En5
  wire signed [14:0] memory_out8;  // sfix15_En5
  wire signed [14:0] memory_out9;  // sfix15_En5
  wire signed [14:0] memory_out10;  // sfix15_En5
  wire signed [14:0] memory_out11;  // sfix15_En5
  wire signed [14:0] memory_out12;  // sfix15_En5
  wire signed [14:0] memory_out13;  // sfix15_En5
  wire signed [14:0] memory_out14;  // sfix15_En5
  wire signed [14:0] memory_out15;  // sfix15_En5
  wire signed [14:0] memory_out16;  // sfix15_En5
  wire signed [14:0] memory_out17;  // sfix15_En5
  wire signed [14:0] memory_out18;  // sfix15_En5
  wire signed [14:0] memory_out19;  // sfix15_En5
  wire signed [14:0] memory_out20;  // sfix15_En5
  wire signed [14:0] memory_out21;  // sfix15_En5
  wire signed [14:0] memory_out22;  // sfix15_En5
  wire signed [14:0] memory_out23;  // sfix15_En5
  wire signed [14:0] memory_out24;  // sfix15_En5
  wire signed [14:0] memory_out25;  // sfix15_En5
  wire signed [14:0] memory_out26;  // sfix15_En5
  wire signed [14:0] memory_out27;  // sfix15_En5
  wire signed [14:0] memory_out28;  // sfix15_En5
  wire signed [14:0] memory_out29;  // sfix15_En5
  wire signed [14:0] memory_out30;  // sfix15_En5
  wire signed [14:0] memory_out31;  // sfix15_En5
  wire signed [14:0] memory_out32;  // sfix15_En5
  wire signed [14:0] memory_out33;  // sfix15_En5
  wire signed [14:0] memory_out34;  // sfix15_En5
  wire signed [14:0] memory_out35;  // sfix15_En5
  wire signed [14:0] memory_out36;  // sfix15_En5
  wire signed [14:0] memory_out37;  // sfix15_En5
  wire signed [14:0] memory_out38;  // sfix15_En5
  wire signed [14:0] memory_out39;  // sfix15_En5
  wire signed [14:0] memory_out40;  // sfix15_En5
  wire signed [14:0] memory_out41;  // sfix15_En5
  wire signed [14:0] memory_out42;  // sfix15_En5
  wire signed [14:0] memory_out43;  // sfix15_En5
  wire signed [14:0] memory_out44;  // sfix15_En5
  wire signed [14:0] memory_out45;  // sfix15_En5
  wire signed [14:0] memory_out46;  // sfix15_En5
  wire signed [14:0] memory_out47;  // sfix15_En5
  wire signed [14:0] memory_out48;  // sfix15_En5
  wire signed [14:0] memory_out49;  // sfix15_En5
  wire signed [14:0] memory_out50;  // sfix15_En5
  wire signed [14:0] memory_out51;  // sfix15_En5
  wire signed [14:0] memory_out52;  // sfix15_En5
  wire signed [14:0] memory_out53;  // sfix15_En5
  wire signed [14:0] memory_out54;  // sfix15_En5
  wire signed [14:0] memory_out55;  // sfix15_En5
  wire signed [14:0] memory_out56;  // sfix15_En5
  wire signed [14:0] memory_out57;  // sfix15_En5
  wire signed [14:0] memory_out58;  // sfix15_En5
  wire signed [14:0] memory_out59;  // sfix15_En5
  wire signed [14:0] memory_out60;  // sfix15_En5
  wire signed [14:0] memory_out61;  // sfix15_En5
  wire signed [14:0] memory_out62;  // sfix15_En5
  wire signed [14:0] memory_out63;  // sfix15_En5
  wire signed [14:0] memory_out64;  // sfix15_En5
  reg [7:0] Counter_Limited2_out1;  // uint8
  wire switch_compare_1;
  wire Constant7_out1;
  wire signed [14:0] Multiport_Switch1_out1;  // sfix15_En5
  wire Constant8_out1;
  wire Switch1_out1;
  wire signed [14:0] DFT_out1_re;  // sfix15_En5
  wire signed [14:0] DFT_out1_im;  // sfix15_En5
  wire DFT_out2;
  wire switch_compare_1_1;
  wire signed [14:0] Constant11_out1;  // sfix15_En5
  wire signed [14:0] Constant10_out1;  // sfix15_En5
  reg signed [14:0] Unit_Delay1_out1;  // sfix15_En5
  wire signed [14:0] Switch2_out1;  // sfix15_En5
  reg signed [14:0] Unit_Delay2_out1;  // sfix15_En5
  wire signed [14:0] Sum1_out1;  // sfix15_En5
  wire switch_compare_1_2;
  wire signed [32:0] Constant13_out1;  // sfix33_En28
  wire signed [32:0] Constant12_out1;  // sfix33_En28
  wire signed [32:0] Switch3_out1;  // sfix33_En28
  wire signed [40:0] generating_analytical_spectrum_out1_re;  // sfix41_En28
  wire signed [40:0] generating_analytical_spectrum_out1_im;  // sfix41_En28
  wire signed [40:0] swapping_out1_re;  // sfix41_En28
  wire signed [40:0] swapping_out1_im;  // sfix41_En28
  reg  [0:3] delayMatch_reg;  // ufix1 [4]
  wire [0:3] delayMatch_reg_next;  // ufix1 [4]
  wire DFT_out2_1;
  wire signed [40:0] DFT_2_out1_re;  // sfix41_En28
  wire signed [40:0] DFT_2_out1_im;  // sfix41_En28
  wire DFT_2_out2;
  wire signed [40:0] swapping2_out1_re;  // sfix41_En28
  wire signed [40:0] swapping2_out1_im;  // sfix41_En28
  wire switch_compare_1_3;
  wire signed [14:0] Constant15_out1;  // sfix15_En5
  wire signed [14:0] Constant16_out1;  // sfix15_En5
  wire signed [14:0] Switch4_out1;  // sfix15_En5
  wire signed [14:0] taking_imaginary_part_out1;  // sfix15_En5


  assign enb = clk_enable;

  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 63
  always @(posedge clk)
    begin : Counter_Limited1_process
      if (reset_x == 1'b1) begin
        Counter_Limited1_out1 <= 8'b00000000;
      end
      else begin
        if (enb) begin
          if (Counter_Limited1_out1 >= 8'b00111111) begin
            Counter_Limited1_out1 <= 8'b00000000;
          end
          else begin
            Counter_Limited1_out1 <= Counter_Limited1_out1 + 8'b00000001;
          end
        end
      end
    end



  parallel_serial1 u_parallel_serial1 (.clk(clk),
                                       .reset_x(reset_x),
                                       .enb(clk_enable),
                                       .In1(in1),  // sfix15_En5
                                       .Out1(parallel_serial1_out1),  // sfix15_En5
                                       .Out2(parallel_serial1_out2),  // sfix15_En5
                                       .Out3(parallel_serial1_out3),  // sfix15_En5
                                       .Out4(parallel_serial1_out4),  // sfix15_En5
                                       .Out5(parallel_serial1_out5),  // sfix15_En5
                                       .Out6(parallel_serial1_out6),  // sfix15_En5
                                       .Out7(parallel_serial1_out7),  // sfix15_En5
                                       .Out8(parallel_serial1_out8),  // sfix15_En5
                                       .Out9(parallel_serial1_out9),  // sfix15_En5
                                       .Out10(parallel_serial1_out10),  // sfix15_En5
                                       .Out11(parallel_serial1_out11),  // sfix15_En5
                                       .Out12(parallel_serial1_out12),  // sfix15_En5
                                       .Out13(parallel_serial1_out13),  // sfix15_En5
                                       .Out14(parallel_serial1_out14),  // sfix15_En5
                                       .Out15(parallel_serial1_out15),  // sfix15_En5
                                       .Out16(parallel_serial1_out16),  // sfix15_En5
                                       .Out17(parallel_serial1_out17),  // sfix15_En5
                                       .Out18(parallel_serial1_out18),  // sfix15_En5
                                       .Out19(parallel_serial1_out19),  // sfix15_En5
                                       .Out20(parallel_serial1_out20),  // sfix15_En5
                                       .Out21(parallel_serial1_out21),  // sfix15_En5
                                       .Out22(parallel_serial1_out22),  // sfix15_En5
                                       .Out23(parallel_serial1_out23),  // sfix15_En5
                                       .Out24(parallel_serial1_out24),  // sfix15_En5
                                       .Out25(parallel_serial1_out25),  // sfix15_En5
                                       .Out26(parallel_serial1_out26),  // sfix15_En5
                                       .Out27(parallel_serial1_out27),  // sfix15_En5
                                       .Out28(parallel_serial1_out28),  // sfix15_En5
                                       .Out29(parallel_serial1_out29),  // sfix15_En5
                                       .Out30(parallel_serial1_out30),  // sfix15_En5
                                       .Out31(parallel_serial1_out31),  // sfix15_En5
                                       .Out32(parallel_serial1_out32),  // sfix15_En5
                                       .Out33(parallel_serial1_out33),  // sfix15_En5
                                       .Out34(parallel_serial1_out34),  // sfix15_En5
                                       .Out35(parallel_serial1_out35),  // sfix15_En5
                                       .Out36(parallel_serial1_out36),  // sfix15_En5
                                       .Out37(parallel_serial1_out37),  // sfix15_En5
                                       .Out38(parallel_serial1_out38),  // sfix15_En5
                                       .Out39(parallel_serial1_out39),  // sfix15_En5
                                       .Out40(parallel_serial1_out40),  // sfix15_En5
                                       .Out41(parallel_serial1_out41),  // sfix15_En5
                                       .Out42(parallel_serial1_out42),  // sfix15_En5
                                       .Out43(parallel_serial1_out43),  // sfix15_En5
                                       .Out44(parallel_serial1_out44),  // sfix15_En5
                                       .Out45(parallel_serial1_out45),  // sfix15_En5
                                       .Out46(parallel_serial1_out46),  // sfix15_En5
                                       .Out47(parallel_serial1_out47),  // sfix15_En5
                                       .Out48(parallel_serial1_out48),  // sfix15_En5
                                       .Out49(parallel_serial1_out49),  // sfix15_En5
                                       .Out50(parallel_serial1_out50),  // sfix15_En5
                                       .Out51(parallel_serial1_out51),  // sfix15_En5
                                       .Out52(parallel_serial1_out52),  // sfix15_En5
                                       .Out53(parallel_serial1_out53),  // sfix15_En5
                                       .Out54(parallel_serial1_out54),  // sfix15_En5
                                       .Out55(parallel_serial1_out55),  // sfix15_En5
                                       .Out56(parallel_serial1_out56),  // sfix15_En5
                                       .Out57(parallel_serial1_out57),  // sfix15_En5
                                       .Out58(parallel_serial1_out58),  // sfix15_En5
                                       .Out59(parallel_serial1_out59),  // sfix15_En5
                                       .Out60(parallel_serial1_out60),  // sfix15_En5
                                       .Out61(parallel_serial1_out61),  // sfix15_En5
                                       .Out62(parallel_serial1_out62),  // sfix15_En5
                                       .Out63(parallel_serial1_out63),  // sfix15_En5
                                       .Out64(parallel_serial1_out64)  // sfix15_En5
                                       );

  memory u_memory (.clk(clk),
                   .reset_x(reset_x),
                   .enb(clk_enable),
                   .In1(parallel_serial1_out1),  // sfix15_En5
                   .In2(parallel_serial1_out2),  // sfix15_En5
                   .In3(parallel_serial1_out3),  // sfix15_En5
                   .In4(parallel_serial1_out4),  // sfix15_En5
                   .In5(parallel_serial1_out5),  // sfix15_En5
                   .In6(parallel_serial1_out6),  // sfix15_En5
                   .In7(parallel_serial1_out7),  // sfix15_En5
                   .In8(parallel_serial1_out8),  // sfix15_En5
                   .In9(parallel_serial1_out9),  // sfix15_En5
                   .In10(parallel_serial1_out10),  // sfix15_En5
                   .In11(parallel_serial1_out11),  // sfix15_En5
                   .In12(parallel_serial1_out12),  // sfix15_En5
                   .In13(parallel_serial1_out13),  // sfix15_En5
                   .In14(parallel_serial1_out14),  // sfix15_En5
                   .In15(parallel_serial1_out15),  // sfix15_En5
                   .In16(parallel_serial1_out16),  // sfix15_En5
                   .In17(parallel_serial1_out17),  // sfix15_En5
                   .In18(parallel_serial1_out18),  // sfix15_En5
                   .In19(parallel_serial1_out19),  // sfix15_En5
                   .In20(parallel_serial1_out20),  // sfix15_En5
                   .In21(parallel_serial1_out21),  // sfix15_En5
                   .In22(parallel_serial1_out22),  // sfix15_En5
                   .In23(parallel_serial1_out23),  // sfix15_En5
                   .In24(parallel_serial1_out24),  // sfix15_En5
                   .In25(parallel_serial1_out25),  // sfix15_En5
                   .In26(parallel_serial1_out26),  // sfix15_En5
                   .In27(parallel_serial1_out27),  // sfix15_En5
                   .In28(parallel_serial1_out28),  // sfix15_En5
                   .In29(parallel_serial1_out29),  // sfix15_En5
                   .In30(parallel_serial1_out30),  // sfix15_En5
                   .In31(parallel_serial1_out31),  // sfix15_En5
                   .In32(parallel_serial1_out32),  // sfix15_En5
                   .In33(parallel_serial1_out33),  // sfix15_En5
                   .In34(parallel_serial1_out34),  // sfix15_En5
                   .In35(parallel_serial1_out35),  // sfix15_En5
                   .In36(parallel_serial1_out36),  // sfix15_En5
                   .In37(parallel_serial1_out37),  // sfix15_En5
                   .In38(parallel_serial1_out38),  // sfix15_En5
                   .In39(parallel_serial1_out39),  // sfix15_En5
                   .In40(parallel_serial1_out40),  // sfix15_En5
                   .In41(parallel_serial1_out41),  // sfix15_En5
                   .In42(parallel_serial1_out42),  // sfix15_En5
                   .In43(parallel_serial1_out43),  // sfix15_En5
                   .In44(parallel_serial1_out44),  // sfix15_En5
                   .In45(parallel_serial1_out45),  // sfix15_En5
                   .In46(parallel_serial1_out46),  // sfix15_En5
                   .In47(parallel_serial1_out47),  // sfix15_En5
                   .In48(parallel_serial1_out48),  // sfix15_En5
                   .In49(parallel_serial1_out49),  // sfix15_En5
                   .In50(parallel_serial1_out50),  // sfix15_En5
                   .In51(parallel_serial1_out51),  // sfix15_En5
                   .In52(parallel_serial1_out52),  // sfix15_En5
                   .In53(parallel_serial1_out53),  // sfix15_En5
                   .In54(parallel_serial1_out54),  // sfix15_En5
                   .In55(parallel_serial1_out55),  // sfix15_En5
                   .In56(parallel_serial1_out56),  // sfix15_En5
                   .In57(parallel_serial1_out57),  // sfix15_En5
                   .In58(parallel_serial1_out58),  // sfix15_En5
                   .In59(parallel_serial1_out59),  // sfix15_En5
                   .In60(parallel_serial1_out60),  // sfix15_En5
                   .In61(parallel_serial1_out61),  // sfix15_En5
                   .In62(parallel_serial1_out62),  // sfix15_En5
                   .In63(parallel_serial1_out63),  // sfix15_En5
                   .In64(parallel_serial1_out64),  // sfix15_En5
                   .Out1(memory_out1),  // sfix15_En5
                   .Out2(memory_out2),  // sfix15_En5
                   .Out3(memory_out3),  // sfix15_En5
                   .Out4(memory_out4),  // sfix15_En5
                   .Out5(memory_out5),  // sfix15_En5
                   .Out6(memory_out6),  // sfix15_En5
                   .Out7(memory_out7),  // sfix15_En5
                   .Out8(memory_out8),  // sfix15_En5
                   .Out9(memory_out9),  // sfix15_En5
                   .Out10(memory_out10),  // sfix15_En5
                   .Out11(memory_out11),  // sfix15_En5
                   .Out12(memory_out12),  // sfix15_En5
                   .Out13(memory_out13),  // sfix15_En5
                   .Out14(memory_out14),  // sfix15_En5
                   .Out15(memory_out15),  // sfix15_En5
                   .Out16(memory_out16),  // sfix15_En5
                   .Out17(memory_out17),  // sfix15_En5
                   .Out18(memory_out18),  // sfix15_En5
                   .Out19(memory_out19),  // sfix15_En5
                   .Out20(memory_out20),  // sfix15_En5
                   .Out21(memory_out21),  // sfix15_En5
                   .Out22(memory_out22),  // sfix15_En5
                   .Out23(memory_out23),  // sfix15_En5
                   .Out24(memory_out24),  // sfix15_En5
                   .Out25(memory_out25),  // sfix15_En5
                   .Out26(memory_out26),  // sfix15_En5
                   .Out27(memory_out27),  // sfix15_En5
                   .Out28(memory_out28),  // sfix15_En5
                   .Out29(memory_out29),  // sfix15_En5
                   .Out30(memory_out30),  // sfix15_En5
                   .Out31(memory_out31),  // sfix15_En5
                   .Out32(memory_out32),  // sfix15_En5
                   .Out33(memory_out33),  // sfix15_En5
                   .Out34(memory_out34),  // sfix15_En5
                   .Out35(memory_out35),  // sfix15_En5
                   .Out36(memory_out36),  // sfix15_En5
                   .Out37(memory_out37),  // sfix15_En5
                   .Out38(memory_out38),  // sfix15_En5
                   .Out39(memory_out39),  // sfix15_En5
                   .Out40(memory_out40),  // sfix15_En5
                   .Out41(memory_out41),  // sfix15_En5
                   .Out42(memory_out42),  // sfix15_En5
                   .Out43(memory_out43),  // sfix15_En5
                   .Out44(memory_out44),  // sfix15_En5
                   .Out45(memory_out45),  // sfix15_En5
                   .Out46(memory_out46),  // sfix15_En5
                   .Out47(memory_out47),  // sfix15_En5
                   .Out48(memory_out48),  // sfix15_En5
                   .Out49(memory_out49),  // sfix15_En5
                   .Out50(memory_out50),  // sfix15_En5
                   .Out51(memory_out51),  // sfix15_En5
                   .Out52(memory_out52),  // sfix15_En5
                   .Out53(memory_out53),  // sfix15_En5
                   .Out54(memory_out54),  // sfix15_En5
                   .Out55(memory_out55),  // sfix15_En5
                   .Out56(memory_out56),  // sfix15_En5
                   .Out57(memory_out57),  // sfix15_En5
                   .Out58(memory_out58),  // sfix15_En5
                   .Out59(memory_out59),  // sfix15_En5
                   .Out60(memory_out60),  // sfix15_En5
                   .Out61(memory_out61),  // sfix15_En5
                   .Out62(memory_out62),  // sfix15_En5
                   .Out63(memory_out63),  // sfix15_En5
                   .Out64(memory_out64)  // sfix15_En5
                   );

  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 128
  always @(posedge clk)
    begin : Counter_Limited2_process
      if (reset_x == 1'b1) begin
        Counter_Limited2_out1 <= 8'b00000000;
      end
      else begin
        if (enb) begin
          if (Counter_Limited2_out1 >= 8'b10000000) begin
            Counter_Limited2_out1 <= 8'b00000000;
          end
          else begin
            Counter_Limited2_out1 <= Counter_Limited2_out1 + 8'b00000001;
          end
        end
      end
    end



  assign switch_compare_1 = Counter_Limited2_out1 > 8'b00111111;



  assign Constant7_out1 = 1'b0;



  assign Multiport_Switch1_out1 = (Counter_Limited1_out1 == 8'b00000000 ? memory_out1 :
              (Counter_Limited1_out1 == 8'b00000001 ? memory_out2 :
              (Counter_Limited1_out1 == 8'b00000010 ? memory_out3 :
              (Counter_Limited1_out1 == 8'b00000011 ? memory_out4 :
              (Counter_Limited1_out1 == 8'b00000100 ? memory_out5 :
              (Counter_Limited1_out1 == 8'b00000101 ? memory_out6 :
              (Counter_Limited1_out1 == 8'b00000110 ? memory_out7 :
              (Counter_Limited1_out1 == 8'b00000111 ? memory_out8 :
              (Counter_Limited1_out1 == 8'b00001000 ? memory_out9 :
              (Counter_Limited1_out1 == 8'b00001001 ? memory_out10 :
              (Counter_Limited1_out1 == 8'b00001010 ? memory_out11 :
              (Counter_Limited1_out1 == 8'b00001011 ? memory_out12 :
              (Counter_Limited1_out1 == 8'b00001100 ? memory_out13 :
              (Counter_Limited1_out1 == 8'b00001101 ? memory_out14 :
              (Counter_Limited1_out1 == 8'b00001110 ? memory_out15 :
              (Counter_Limited1_out1 == 8'b00001111 ? memory_out16 :
              (Counter_Limited1_out1 == 8'b00010000 ? memory_out17 :
              (Counter_Limited1_out1 == 8'b00010001 ? memory_out18 :
              (Counter_Limited1_out1 == 8'b00010010 ? memory_out19 :
              (Counter_Limited1_out1 == 8'b00010011 ? memory_out20 :
              (Counter_Limited1_out1 == 8'b00010100 ? memory_out21 :
              (Counter_Limited1_out1 == 8'b00010101 ? memory_out22 :
              (Counter_Limited1_out1 == 8'b00010110 ? memory_out23 :
              (Counter_Limited1_out1 == 8'b00010111 ? memory_out24 :
              (Counter_Limited1_out1 == 8'b00011000 ? memory_out25 :
              (Counter_Limited1_out1 == 8'b00011001 ? memory_out26 :
              (Counter_Limited1_out1 == 8'b00011010 ? memory_out27 :
              (Counter_Limited1_out1 == 8'b00011011 ? memory_out28 :
              (Counter_Limited1_out1 == 8'b00011100 ? memory_out29 :
              (Counter_Limited1_out1 == 8'b00011101 ? memory_out30 :
              (Counter_Limited1_out1 == 8'b00011110 ? memory_out31 :
              (Counter_Limited1_out1 == 8'b00011111 ? memory_out32 :
              (Counter_Limited1_out1 == 8'b00100000 ? memory_out33 :
              (Counter_Limited1_out1 == 8'b00100001 ? memory_out34 :
              (Counter_Limited1_out1 == 8'b00100010 ? memory_out35 :
              (Counter_Limited1_out1 == 8'b00100011 ? memory_out36 :
              (Counter_Limited1_out1 == 8'b00100100 ? memory_out37 :
              (Counter_Limited1_out1 == 8'b00100101 ? memory_out38 :
              (Counter_Limited1_out1 == 8'b00100110 ? memory_out39 :
              (Counter_Limited1_out1 == 8'b00100111 ? memory_out40 :
              (Counter_Limited1_out1 == 8'b00101000 ? memory_out41 :
              (Counter_Limited1_out1 == 8'b00101001 ? memory_out42 :
              (Counter_Limited1_out1 == 8'b00101010 ? memory_out43 :
              (Counter_Limited1_out1 == 8'b00101011 ? memory_out44 :
              (Counter_Limited1_out1 == 8'b00101100 ? memory_out45 :
              (Counter_Limited1_out1 == 8'b00101101 ? memory_out46 :
              (Counter_Limited1_out1 == 8'b00101110 ? memory_out47 :
              (Counter_Limited1_out1 == 8'b00101111 ? memory_out48 :
              (Counter_Limited1_out1 == 8'b00110000 ? memory_out49 :
              (Counter_Limited1_out1 == 8'b00110001 ? memory_out50 :
              (Counter_Limited1_out1 == 8'b00110010 ? memory_out51 :
              (Counter_Limited1_out1 == 8'b00110011 ? memory_out52 :
              (Counter_Limited1_out1 == 8'b00110100 ? memory_out53 :
              (Counter_Limited1_out1 == 8'b00110101 ? memory_out54 :
              (Counter_Limited1_out1 == 8'b00110110 ? memory_out55 :
              (Counter_Limited1_out1 == 8'b00110111 ? memory_out56 :
              (Counter_Limited1_out1 == 8'b00111000 ? memory_out57 :
              (Counter_Limited1_out1 == 8'b00111001 ? memory_out58 :
              (Counter_Limited1_out1 == 8'b00111010 ? memory_out59 :
              (Counter_Limited1_out1 == 8'b00111011 ? memory_out60 :
              (Counter_Limited1_out1 == 8'b00111100 ? memory_out61 :
              (Counter_Limited1_out1 == 8'b00111101 ? memory_out62 :
              (Counter_Limited1_out1 == 8'b00111110 ? memory_out63 :
              memory_out64)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));



  assign Constant8_out1 = 1'b1;



  assign Switch1_out1 = (switch_compare_1 == 1'b0 ? Constant7_out1 :
              Constant8_out1);



  DFT u_DFT (.clk(clk),
             .reset_x(reset_x),
             .enb(clk_enable),
             .dataIn(Multiport_Switch1_out1),  // sfix15_En5
             .validIn(Switch1_out1),
             .dataOut_re(DFT_out1_re),  // sfix15_En5
             .dataOut_im(DFT_out1_im),  // sfix15_En5
             .validOut(DFT_out2)
             );

  assign switch_compare_1_1 = DFT_out2 == 1'b1;



  assign Constant11_out1 = 15'sb000000000000000;



  assign Constant10_out1 = 15'sb000000000100000;



  always @(posedge clk)
    begin : Unit_Delay1_process
      if (reset_x == 1'b1) begin
        Unit_Delay1_out1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Unit_Delay1_out1 <= Constant10_out1;
        end
      end
    end



  always @(posedge clk)
    begin : Unit_Delay2_process
      if (reset_x == 1'b1) begin
        Unit_Delay2_out1 <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          Unit_Delay2_out1 <= Switch2_out1;
        end
      end
    end



  assign Sum1_out1 = Unit_Delay1_out1 + Unit_Delay2_out1;



  assign Switch2_out1 = (switch_compare_1_1 == 1'b0 ? Constant11_out1 :
              Sum1_out1);



  assign switch_compare_1_2 = Switch2_out1 > 15'sb000010000000000;



  assign Constant13_out1 = 33'sh010000000;



  assign Constant12_out1 = 33'sh000000000;



  assign Switch3_out1 = (switch_compare_1_2 == 1'b0 ? Constant13_out1 :
              Constant12_out1);



  generating_analytical_spectrum u_generating_analytical_spectrum (.clk(clk),
                                                                   .reset_x(reset_x),
                                                                   .enb(clk_enable),
                                                                   .In1_re(DFT_out1_re),  // sfix15_En5
                                                                   .In1_im(DFT_out1_im),  // sfix15_En5
                                                                   .In2(Switch3_out1),  // sfix33_En28
                                                                   .Out1_re(generating_analytical_spectrum_out1_re),  // sfix41_En28
                                                                   .Out1_im(generating_analytical_spectrum_out1_im)  // sfix41_En28
                                                                   );

  swapping u_swapping (.In1_re(generating_analytical_spectrum_out1_re),  // sfix41_En28
                       .In1_im(generating_analytical_spectrum_out1_im),  // sfix41_En28
                       .Out1_re(swapping_out1_re),  // sfix41_En28
                       .Out1_im(swapping_out1_im)  // sfix41_En28
                       );

  always @(posedge clk)
    begin : delayMatch_process
      if (reset_x == 1'b1) begin
        delayMatch_reg[0] <= 1'b0;
        delayMatch_reg[1] <= 1'b0;
        delayMatch_reg[2] <= 1'b0;
        delayMatch_reg[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
          delayMatch_reg[3] <= delayMatch_reg_next[3];
        end
      end
    end

  assign DFT_out2_1 = delayMatch_reg[3];
  assign delayMatch_reg_next[0] = DFT_out2;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];
  assign delayMatch_reg_next[3] = delayMatch_reg[2];



  DFT_2 u_DFT_2 (.clk(clk),
                 .reset_x(reset_x),
                 .enb(clk_enable),
                 .dataIn_re(swapping_out1_re),  // sfix41_En28
                 .dataIn_im(swapping_out1_im),  // sfix41_En28
                 .validIn(DFT_out2_1),
                 .dataOut_re(DFT_2_out1_re),  // sfix41_En28
                 .dataOut_im(DFT_2_out1_im),  // sfix41_En28
                 .validOut(DFT_2_out2)
                 );

  swapping2 u_swapping2 (.In1_re(DFT_2_out1_re),  // sfix41_En28
                         .In1_im(DFT_2_out1_im),  // sfix41_En28
                         .Out1_re(swapping2_out1_re),  // sfix41_En28
                         .Out1_im(swapping2_out1_im)  // sfix41_En28
                         );

  assign switch_compare_1_3 = DFT_2_out2 > 1'b0;



  assign Constant15_out1 = 15'sb000000000000000;



  assign Constant16_out1 = 15'sb000100000000000;



  assign Switch4_out1 = (switch_compare_1_3 == 1'b0 ? Constant15_out1 :
              Constant16_out1);



  taking_imaginary_part u_taking_imaginary_part (.clk(clk),
                                                 .reset_x(reset_x),
                                                 .enb(clk_enable),
                                                 .In1_re(swapping2_out1_re),  // sfix41_En28
                                                 .In1_im(swapping2_out1_im),  // sfix41_En28
                                                 .In2(Switch4_out1),  // sfix15_En5
                                                 .Out1(taking_imaginary_part_out1)  // sfix15_En5
                                                 );

  assign out1 = taking_imaginary_part_out1;

  assign ce_out = clk_enable;

endmodule  // FDHT

