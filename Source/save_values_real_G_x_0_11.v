// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\save_values_real_G_x_0_11.v
// Created: 2020-12-20 13:10:05
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: save_values_real_G_x_0_11
// Source Path: newhope_cambios/FDHT/DFT_2/save_G_values/save_values_real_G(x,0)11
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module save_values_real_G_x_0_11
          (clk,
           reset_x,
           enb,
           din,
           In2,
           dout,
           dout1,
           dout2,
           dout3,
           dout4);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [36:0] din;  // sfix37_En22
  input   [7:0] In2;  // uint8
  output  signed [36:0] dout;  // sfix37_En22
  output  signed [36:0] dout1;  // sfix37_En22
  output  signed [36:0] dout2;  // sfix37_En22
  output  signed [36:0] dout3;  // sfix37_En22
  output  signed [36:0] dout4;  // sfix37_En22


  wire [1:0] Constant5_out1;  // ufix2
  wire Constant7_out1;
  wire Constant6_out1;
  wire Multiport_Switch4_out1;
  reg  [0:17] delayMatch_reg;  // ufix1 [18]
  wire [0:17] delayMatch_reg_next;  // ufix1 [18]
  wire Multiport_Switch4_out1_1;
  wire signed [36:0] Single_Port_RAM_out1;  // sfix37_En22
  wire [1:0] Constant4_out1;  // ufix2
  wire Constant2_out1;
  wire Constant1_out1;
  wire Multiport_Switch1_out1;
  reg  [0:17] delayMatch1_reg;  // ufix1 [18]
  wire [0:17] delayMatch1_reg_next;  // ufix1 [18]
  wire Multiport_Switch1_out1_1;
  wire signed [36:0] Single_Port_RAM1_out1;  // sfix37_En22
  wire [1:0] Constant11_out1;  // ufix2
  wire Constant8_out1;
  wire Constant3_out1;
  wire Multiport_Switch3_out1;
  reg  [0:17] delayMatch2_reg;  // ufix1 [18]
  wire [0:17] delayMatch2_reg_next;  // ufix1 [18]
  wire Multiport_Switch3_out1_1;
  wire signed [36:0] Single_Port_RAM2_out1;  // sfix37_En22
  wire [1:0] Constant10_out1;  // ufix2
  wire Constant12_out1;
  wire Constant9_out1;
  wire Multiport_Switch2_out1;
  reg  [0:17] delayMatch3_reg;  // ufix1 [18]
  wire [0:17] delayMatch3_reg_next;  // ufix1 [18]
  wire Multiport_Switch2_out1_1;
  wire signed [36:0] Single_Port_RAM3_out1;  // sfix37_En22
  wire [1:0] Constant17_out1;  // ufix2
  wire Constant14_out1;
  wire Constant13_out1;
  wire Multiport_Switch5_out1;
  reg  [0:17] delayMatch4_reg;  // ufix1 [18]
  wire [0:17] delayMatch4_reg_next;  // ufix1 [18]
  wire Multiport_Switch5_out1_1;
  wire signed [36:0] Single_Port_RAM4_out1;  // sfix37_En22


  assign Constant5_out1 = 2'b01;



  assign Constant7_out1 = 1'b0;



  assign Constant6_out1 = 1'b1;



  assign Multiport_Switch4_out1 = (In2 == 8'b00000000 ? Constant7_out1 :
              (In2 == 8'b00000001 ? Constant7_out1 :
              (In2 == 8'b00000010 ? Constant7_out1 :
              (In2 == 8'b00000011 ? Constant7_out1 :
              (In2 == 8'b00000100 ? Constant7_out1 :
              (In2 == 8'b00000101 ? Constant7_out1 :
              (In2 == 8'b00000110 ? Constant7_out1 :
              (In2 == 8'b00000111 ? Constant7_out1 :
              (In2 == 8'b00001000 ? Constant7_out1 :
              (In2 == 8'b00001001 ? Constant7_out1 :
              (In2 == 8'b00001010 ? Constant6_out1 :
              (In2 == 8'b00001011 ? Constant7_out1 :
              (In2 == 8'b00001100 ? Constant7_out1 :
              (In2 == 8'b00001101 ? Constant7_out1 :
              Constant7_out1))))))))))))));



  always @(posedge clk)
    begin : delayMatch_process
      if (reset_x == 1'b1) begin
        delayMatch_reg[0] <= 1'b0;
        delayMatch_reg[1] <= 1'b0;
        delayMatch_reg[2] <= 1'b0;
        delayMatch_reg[3] <= 1'b0;
        delayMatch_reg[4] <= 1'b0;
        delayMatch_reg[5] <= 1'b0;
        delayMatch_reg[6] <= 1'b0;
        delayMatch_reg[7] <= 1'b0;
        delayMatch_reg[8] <= 1'b0;
        delayMatch_reg[9] <= 1'b0;
        delayMatch_reg[10] <= 1'b0;
        delayMatch_reg[11] <= 1'b0;
        delayMatch_reg[12] <= 1'b0;
        delayMatch_reg[13] <= 1'b0;
        delayMatch_reg[14] <= 1'b0;
        delayMatch_reg[15] <= 1'b0;
        delayMatch_reg[16] <= 1'b0;
        delayMatch_reg[17] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
          delayMatch_reg[3] <= delayMatch_reg_next[3];
          delayMatch_reg[4] <= delayMatch_reg_next[4];
          delayMatch_reg[5] <= delayMatch_reg_next[5];
          delayMatch_reg[6] <= delayMatch_reg_next[6];
          delayMatch_reg[7] <= delayMatch_reg_next[7];
          delayMatch_reg[8] <= delayMatch_reg_next[8];
          delayMatch_reg[9] <= delayMatch_reg_next[9];
          delayMatch_reg[10] <= delayMatch_reg_next[10];
          delayMatch_reg[11] <= delayMatch_reg_next[11];
          delayMatch_reg[12] <= delayMatch_reg_next[12];
          delayMatch_reg[13] <= delayMatch_reg_next[13];
          delayMatch_reg[14] <= delayMatch_reg_next[14];
          delayMatch_reg[15] <= delayMatch_reg_next[15];
          delayMatch_reg[16] <= delayMatch_reg_next[16];
          delayMatch_reg[17] <= delayMatch_reg_next[17];
        end
      end
    end

  assign Multiport_Switch4_out1_1 = delayMatch_reg[17];
  assign delayMatch_reg_next[0] = Multiport_Switch4_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];
  assign delayMatch_reg_next[3] = delayMatch_reg[2];
  assign delayMatch_reg_next[4] = delayMatch_reg[3];
  assign delayMatch_reg_next[5] = delayMatch_reg[4];
  assign delayMatch_reg_next[6] = delayMatch_reg[5];
  assign delayMatch_reg_next[7] = delayMatch_reg[6];
  assign delayMatch_reg_next[8] = delayMatch_reg[7];
  assign delayMatch_reg_next[9] = delayMatch_reg[8];
  assign delayMatch_reg_next[10] = delayMatch_reg[9];
  assign delayMatch_reg_next[11] = delayMatch_reg[10];
  assign delayMatch_reg_next[12] = delayMatch_reg[11];
  assign delayMatch_reg_next[13] = delayMatch_reg[12];
  assign delayMatch_reg_next[14] = delayMatch_reg[13];
  assign delayMatch_reg_next[15] = delayMatch_reg[14];
  assign delayMatch_reg_next[16] = delayMatch_reg[15];
  assign delayMatch_reg_next[17] = delayMatch_reg[16];



  SinglePortRAM_generic #(.AddrWidth(2),
                          .DataWidth(37)
                          )
                        u_Single_Port_RAM (.clk(clk),
                                           .enb(enb),
                                           .din(din),
                                           .addr(Constant5_out1),
                                           .we(Multiport_Switch4_out1_1),
                                           .dout(Single_Port_RAM_out1)
                                           );

  assign dout = Single_Port_RAM_out1;

  assign Constant4_out1 = 2'b01;



  assign Constant2_out1 = 1'b0;



  assign Constant1_out1 = 1'b1;



  assign Multiport_Switch1_out1 = (In2 == 8'b00000000 ? Constant2_out1 :
              (In2 == 8'b00000001 ? Constant2_out1 :
              (In2 == 8'b00000010 ? Constant2_out1 :
              (In2 == 8'b00000011 ? Constant2_out1 :
              (In2 == 8'b00000100 ? Constant2_out1 :
              (In2 == 8'b00000101 ? Constant2_out1 :
              (In2 == 8'b00000110 ? Constant2_out1 :
              (In2 == 8'b00000111 ? Constant2_out1 :
              (In2 == 8'b00001000 ? Constant2_out1 :
              (In2 == 8'b00001001 ? Constant2_out1 :
              (In2 == 8'b00001010 ? Constant2_out1 :
              (In2 == 8'b00001011 ? Constant1_out1 :
              (In2 == 8'b00001100 ? Constant2_out1 :
              (In2 == 8'b00001101 ? Constant2_out1 :
              Constant2_out1))))))))))))));



  always @(posedge clk)
    begin : delayMatch1_process
      if (reset_x == 1'b1) begin
        delayMatch1_reg[0] <= 1'b0;
        delayMatch1_reg[1] <= 1'b0;
        delayMatch1_reg[2] <= 1'b0;
        delayMatch1_reg[3] <= 1'b0;
        delayMatch1_reg[4] <= 1'b0;
        delayMatch1_reg[5] <= 1'b0;
        delayMatch1_reg[6] <= 1'b0;
        delayMatch1_reg[7] <= 1'b0;
        delayMatch1_reg[8] <= 1'b0;
        delayMatch1_reg[9] <= 1'b0;
        delayMatch1_reg[10] <= 1'b0;
        delayMatch1_reg[11] <= 1'b0;
        delayMatch1_reg[12] <= 1'b0;
        delayMatch1_reg[13] <= 1'b0;
        delayMatch1_reg[14] <= 1'b0;
        delayMatch1_reg[15] <= 1'b0;
        delayMatch1_reg[16] <= 1'b0;
        delayMatch1_reg[17] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
          delayMatch1_reg[3] <= delayMatch1_reg_next[3];
          delayMatch1_reg[4] <= delayMatch1_reg_next[4];
          delayMatch1_reg[5] <= delayMatch1_reg_next[5];
          delayMatch1_reg[6] <= delayMatch1_reg_next[6];
          delayMatch1_reg[7] <= delayMatch1_reg_next[7];
          delayMatch1_reg[8] <= delayMatch1_reg_next[8];
          delayMatch1_reg[9] <= delayMatch1_reg_next[9];
          delayMatch1_reg[10] <= delayMatch1_reg_next[10];
          delayMatch1_reg[11] <= delayMatch1_reg_next[11];
          delayMatch1_reg[12] <= delayMatch1_reg_next[12];
          delayMatch1_reg[13] <= delayMatch1_reg_next[13];
          delayMatch1_reg[14] <= delayMatch1_reg_next[14];
          delayMatch1_reg[15] <= delayMatch1_reg_next[15];
          delayMatch1_reg[16] <= delayMatch1_reg_next[16];
          delayMatch1_reg[17] <= delayMatch1_reg_next[17];
        end
      end
    end

  assign Multiport_Switch1_out1_1 = delayMatch1_reg[17];
  assign delayMatch1_reg_next[0] = Multiport_Switch1_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];
  assign delayMatch1_reg_next[3] = delayMatch1_reg[2];
  assign delayMatch1_reg_next[4] = delayMatch1_reg[3];
  assign delayMatch1_reg_next[5] = delayMatch1_reg[4];
  assign delayMatch1_reg_next[6] = delayMatch1_reg[5];
  assign delayMatch1_reg_next[7] = delayMatch1_reg[6];
  assign delayMatch1_reg_next[8] = delayMatch1_reg[7];
  assign delayMatch1_reg_next[9] = delayMatch1_reg[8];
  assign delayMatch1_reg_next[10] = delayMatch1_reg[9];
  assign delayMatch1_reg_next[11] = delayMatch1_reg[10];
  assign delayMatch1_reg_next[12] = delayMatch1_reg[11];
  assign delayMatch1_reg_next[13] = delayMatch1_reg[12];
  assign delayMatch1_reg_next[14] = delayMatch1_reg[13];
  assign delayMatch1_reg_next[15] = delayMatch1_reg[14];
  assign delayMatch1_reg_next[16] = delayMatch1_reg[15];
  assign delayMatch1_reg_next[17] = delayMatch1_reg[16];



  SinglePortRAM_generic #(.AddrWidth(2),
                          .DataWidth(37)
                          )
                        u_Single_Port_RAM1 (.clk(clk),
                                            .enb(enb),
                                            .din(din),
                                            .addr(Constant4_out1),
                                            .we(Multiport_Switch1_out1_1),
                                            .dout(Single_Port_RAM1_out1)
                                            );

  assign dout1 = Single_Port_RAM1_out1;

  assign Constant11_out1 = 2'b01;



  assign Constant8_out1 = 1'b0;



  assign Constant3_out1 = 1'b1;



  assign Multiport_Switch3_out1 = (In2 == 8'b00000000 ? Constant8_out1 :
              (In2 == 8'b00000001 ? Constant8_out1 :
              (In2 == 8'b00000010 ? Constant8_out1 :
              (In2 == 8'b00000011 ? Constant8_out1 :
              (In2 == 8'b00000100 ? Constant8_out1 :
              (In2 == 8'b00000101 ? Constant8_out1 :
              (In2 == 8'b00000110 ? Constant8_out1 :
              (In2 == 8'b00000111 ? Constant8_out1 :
              (In2 == 8'b00001000 ? Constant8_out1 :
              (In2 == 8'b00001001 ? Constant8_out1 :
              (In2 == 8'b00001010 ? Constant8_out1 :
              (In2 == 8'b00001011 ? Constant8_out1 :
              (In2 == 8'b00001100 ? Constant3_out1 :
              (In2 == 8'b00001101 ? Constant8_out1 :
              Constant8_out1))))))))))))));



  always @(posedge clk)
    begin : delayMatch2_process
      if (reset_x == 1'b1) begin
        delayMatch2_reg[0] <= 1'b0;
        delayMatch2_reg[1] <= 1'b0;
        delayMatch2_reg[2] <= 1'b0;
        delayMatch2_reg[3] <= 1'b0;
        delayMatch2_reg[4] <= 1'b0;
        delayMatch2_reg[5] <= 1'b0;
        delayMatch2_reg[6] <= 1'b0;
        delayMatch2_reg[7] <= 1'b0;
        delayMatch2_reg[8] <= 1'b0;
        delayMatch2_reg[9] <= 1'b0;
        delayMatch2_reg[10] <= 1'b0;
        delayMatch2_reg[11] <= 1'b0;
        delayMatch2_reg[12] <= 1'b0;
        delayMatch2_reg[13] <= 1'b0;
        delayMatch2_reg[14] <= 1'b0;
        delayMatch2_reg[15] <= 1'b0;
        delayMatch2_reg[16] <= 1'b0;
        delayMatch2_reg[17] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch2_reg[0] <= delayMatch2_reg_next[0];
          delayMatch2_reg[1] <= delayMatch2_reg_next[1];
          delayMatch2_reg[2] <= delayMatch2_reg_next[2];
          delayMatch2_reg[3] <= delayMatch2_reg_next[3];
          delayMatch2_reg[4] <= delayMatch2_reg_next[4];
          delayMatch2_reg[5] <= delayMatch2_reg_next[5];
          delayMatch2_reg[6] <= delayMatch2_reg_next[6];
          delayMatch2_reg[7] <= delayMatch2_reg_next[7];
          delayMatch2_reg[8] <= delayMatch2_reg_next[8];
          delayMatch2_reg[9] <= delayMatch2_reg_next[9];
          delayMatch2_reg[10] <= delayMatch2_reg_next[10];
          delayMatch2_reg[11] <= delayMatch2_reg_next[11];
          delayMatch2_reg[12] <= delayMatch2_reg_next[12];
          delayMatch2_reg[13] <= delayMatch2_reg_next[13];
          delayMatch2_reg[14] <= delayMatch2_reg_next[14];
          delayMatch2_reg[15] <= delayMatch2_reg_next[15];
          delayMatch2_reg[16] <= delayMatch2_reg_next[16];
          delayMatch2_reg[17] <= delayMatch2_reg_next[17];
        end
      end
    end

  assign Multiport_Switch3_out1_1 = delayMatch2_reg[17];
  assign delayMatch2_reg_next[0] = Multiport_Switch3_out1;
  assign delayMatch2_reg_next[1] = delayMatch2_reg[0];
  assign delayMatch2_reg_next[2] = delayMatch2_reg[1];
  assign delayMatch2_reg_next[3] = delayMatch2_reg[2];
  assign delayMatch2_reg_next[4] = delayMatch2_reg[3];
  assign delayMatch2_reg_next[5] = delayMatch2_reg[4];
  assign delayMatch2_reg_next[6] = delayMatch2_reg[5];
  assign delayMatch2_reg_next[7] = delayMatch2_reg[6];
  assign delayMatch2_reg_next[8] = delayMatch2_reg[7];
  assign delayMatch2_reg_next[9] = delayMatch2_reg[8];
  assign delayMatch2_reg_next[10] = delayMatch2_reg[9];
  assign delayMatch2_reg_next[11] = delayMatch2_reg[10];
  assign delayMatch2_reg_next[12] = delayMatch2_reg[11];
  assign delayMatch2_reg_next[13] = delayMatch2_reg[12];
  assign delayMatch2_reg_next[14] = delayMatch2_reg[13];
  assign delayMatch2_reg_next[15] = delayMatch2_reg[14];
  assign delayMatch2_reg_next[16] = delayMatch2_reg[15];
  assign delayMatch2_reg_next[17] = delayMatch2_reg[16];



  SinglePortRAM_generic #(.AddrWidth(2),
                          .DataWidth(37)
                          )
                        u_Single_Port_RAM2 (.clk(clk),
                                            .enb(enb),
                                            .din(din),
                                            .addr(Constant11_out1),
                                            .we(Multiport_Switch3_out1_1),
                                            .dout(Single_Port_RAM2_out1)
                                            );

  assign dout2 = Single_Port_RAM2_out1;

  assign Constant10_out1 = 2'b01;



  assign Constant12_out1 = 1'b0;



  assign Constant9_out1 = 1'b1;



  assign Multiport_Switch2_out1 = (In2 == 8'b00000000 ? Constant12_out1 :
              (In2 == 8'b00000001 ? Constant12_out1 :
              (In2 == 8'b00000010 ? Constant12_out1 :
              (In2 == 8'b00000011 ? Constant12_out1 :
              (In2 == 8'b00000100 ? Constant12_out1 :
              (In2 == 8'b00000101 ? Constant12_out1 :
              (In2 == 8'b00000110 ? Constant12_out1 :
              (In2 == 8'b00000111 ? Constant12_out1 :
              (In2 == 8'b00001000 ? Constant12_out1 :
              (In2 == 8'b00001001 ? Constant12_out1 :
              (In2 == 8'b00001010 ? Constant12_out1 :
              (In2 == 8'b00001011 ? Constant12_out1 :
              (In2 == 8'b00001100 ? Constant12_out1 :
              (In2 == 8'b00001101 ? Constant9_out1 :
              Constant12_out1))))))))))))));



  always @(posedge clk)
    begin : delayMatch3_process
      if (reset_x == 1'b1) begin
        delayMatch3_reg[0] <= 1'b0;
        delayMatch3_reg[1] <= 1'b0;
        delayMatch3_reg[2] <= 1'b0;
        delayMatch3_reg[3] <= 1'b0;
        delayMatch3_reg[4] <= 1'b0;
        delayMatch3_reg[5] <= 1'b0;
        delayMatch3_reg[6] <= 1'b0;
        delayMatch3_reg[7] <= 1'b0;
        delayMatch3_reg[8] <= 1'b0;
        delayMatch3_reg[9] <= 1'b0;
        delayMatch3_reg[10] <= 1'b0;
        delayMatch3_reg[11] <= 1'b0;
        delayMatch3_reg[12] <= 1'b0;
        delayMatch3_reg[13] <= 1'b0;
        delayMatch3_reg[14] <= 1'b0;
        delayMatch3_reg[15] <= 1'b0;
        delayMatch3_reg[16] <= 1'b0;
        delayMatch3_reg[17] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch3_reg[0] <= delayMatch3_reg_next[0];
          delayMatch3_reg[1] <= delayMatch3_reg_next[1];
          delayMatch3_reg[2] <= delayMatch3_reg_next[2];
          delayMatch3_reg[3] <= delayMatch3_reg_next[3];
          delayMatch3_reg[4] <= delayMatch3_reg_next[4];
          delayMatch3_reg[5] <= delayMatch3_reg_next[5];
          delayMatch3_reg[6] <= delayMatch3_reg_next[6];
          delayMatch3_reg[7] <= delayMatch3_reg_next[7];
          delayMatch3_reg[8] <= delayMatch3_reg_next[8];
          delayMatch3_reg[9] <= delayMatch3_reg_next[9];
          delayMatch3_reg[10] <= delayMatch3_reg_next[10];
          delayMatch3_reg[11] <= delayMatch3_reg_next[11];
          delayMatch3_reg[12] <= delayMatch3_reg_next[12];
          delayMatch3_reg[13] <= delayMatch3_reg_next[13];
          delayMatch3_reg[14] <= delayMatch3_reg_next[14];
          delayMatch3_reg[15] <= delayMatch3_reg_next[15];
          delayMatch3_reg[16] <= delayMatch3_reg_next[16];
          delayMatch3_reg[17] <= delayMatch3_reg_next[17];
        end
      end
    end

  assign Multiport_Switch2_out1_1 = delayMatch3_reg[17];
  assign delayMatch3_reg_next[0] = Multiport_Switch2_out1;
  assign delayMatch3_reg_next[1] = delayMatch3_reg[0];
  assign delayMatch3_reg_next[2] = delayMatch3_reg[1];
  assign delayMatch3_reg_next[3] = delayMatch3_reg[2];
  assign delayMatch3_reg_next[4] = delayMatch3_reg[3];
  assign delayMatch3_reg_next[5] = delayMatch3_reg[4];
  assign delayMatch3_reg_next[6] = delayMatch3_reg[5];
  assign delayMatch3_reg_next[7] = delayMatch3_reg[6];
  assign delayMatch3_reg_next[8] = delayMatch3_reg[7];
  assign delayMatch3_reg_next[9] = delayMatch3_reg[8];
  assign delayMatch3_reg_next[10] = delayMatch3_reg[9];
  assign delayMatch3_reg_next[11] = delayMatch3_reg[10];
  assign delayMatch3_reg_next[12] = delayMatch3_reg[11];
  assign delayMatch3_reg_next[13] = delayMatch3_reg[12];
  assign delayMatch3_reg_next[14] = delayMatch3_reg[13];
  assign delayMatch3_reg_next[15] = delayMatch3_reg[14];
  assign delayMatch3_reg_next[16] = delayMatch3_reg[15];
  assign delayMatch3_reg_next[17] = delayMatch3_reg[16];



  SinglePortRAM_generic #(.AddrWidth(2),
                          .DataWidth(37)
                          )
                        u_Single_Port_RAM3 (.clk(clk),
                                            .enb(enb),
                                            .din(din),
                                            .addr(Constant10_out1),
                                            .we(Multiport_Switch2_out1_1),
                                            .dout(Single_Port_RAM3_out1)
                                            );

  assign dout3 = Single_Port_RAM3_out1;

  assign Constant17_out1 = 2'b01;



  assign Constant14_out1 = 1'b0;



  assign Constant13_out1 = 1'b1;



  assign Multiport_Switch5_out1 = (In2 == 8'b00000000 ? Constant14_out1 :
              (In2 == 8'b00000001 ? Constant14_out1 :
              (In2 == 8'b00000010 ? Constant14_out1 :
              (In2 == 8'b00000011 ? Constant14_out1 :
              (In2 == 8'b00000100 ? Constant14_out1 :
              (In2 == 8'b00000101 ? Constant14_out1 :
              (In2 == 8'b00000110 ? Constant14_out1 :
              (In2 == 8'b00000111 ? Constant14_out1 :
              (In2 == 8'b00001000 ? Constant14_out1 :
              (In2 == 8'b00001001 ? Constant14_out1 :
              (In2 == 8'b00001010 ? Constant14_out1 :
              (In2 == 8'b00001011 ? Constant14_out1 :
              (In2 == 8'b00001100 ? Constant14_out1 :
              (In2 == 8'b00001101 ? Constant14_out1 :
              Constant13_out1))))))))))))));



  always @(posedge clk)
    begin : delayMatch4_process
      if (reset_x == 1'b1) begin
        delayMatch4_reg[0] <= 1'b0;
        delayMatch4_reg[1] <= 1'b0;
        delayMatch4_reg[2] <= 1'b0;
        delayMatch4_reg[3] <= 1'b0;
        delayMatch4_reg[4] <= 1'b0;
        delayMatch4_reg[5] <= 1'b0;
        delayMatch4_reg[6] <= 1'b0;
        delayMatch4_reg[7] <= 1'b0;
        delayMatch4_reg[8] <= 1'b0;
        delayMatch4_reg[9] <= 1'b0;
        delayMatch4_reg[10] <= 1'b0;
        delayMatch4_reg[11] <= 1'b0;
        delayMatch4_reg[12] <= 1'b0;
        delayMatch4_reg[13] <= 1'b0;
        delayMatch4_reg[14] <= 1'b0;
        delayMatch4_reg[15] <= 1'b0;
        delayMatch4_reg[16] <= 1'b0;
        delayMatch4_reg[17] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch4_reg[0] <= delayMatch4_reg_next[0];
          delayMatch4_reg[1] <= delayMatch4_reg_next[1];
          delayMatch4_reg[2] <= delayMatch4_reg_next[2];
          delayMatch4_reg[3] <= delayMatch4_reg_next[3];
          delayMatch4_reg[4] <= delayMatch4_reg_next[4];
          delayMatch4_reg[5] <= delayMatch4_reg_next[5];
          delayMatch4_reg[6] <= delayMatch4_reg_next[6];
          delayMatch4_reg[7] <= delayMatch4_reg_next[7];
          delayMatch4_reg[8] <= delayMatch4_reg_next[8];
          delayMatch4_reg[9] <= delayMatch4_reg_next[9];
          delayMatch4_reg[10] <= delayMatch4_reg_next[10];
          delayMatch4_reg[11] <= delayMatch4_reg_next[11];
          delayMatch4_reg[12] <= delayMatch4_reg_next[12];
          delayMatch4_reg[13] <= delayMatch4_reg_next[13];
          delayMatch4_reg[14] <= delayMatch4_reg_next[14];
          delayMatch4_reg[15] <= delayMatch4_reg_next[15];
          delayMatch4_reg[16] <= delayMatch4_reg_next[16];
          delayMatch4_reg[17] <= delayMatch4_reg_next[17];
        end
      end
    end

  assign Multiport_Switch5_out1_1 = delayMatch4_reg[17];
  assign delayMatch4_reg_next[0] = Multiport_Switch5_out1;
  assign delayMatch4_reg_next[1] = delayMatch4_reg[0];
  assign delayMatch4_reg_next[2] = delayMatch4_reg[1];
  assign delayMatch4_reg_next[3] = delayMatch4_reg[2];
  assign delayMatch4_reg_next[4] = delayMatch4_reg[3];
  assign delayMatch4_reg_next[5] = delayMatch4_reg[4];
  assign delayMatch4_reg_next[6] = delayMatch4_reg[5];
  assign delayMatch4_reg_next[7] = delayMatch4_reg[6];
  assign delayMatch4_reg_next[8] = delayMatch4_reg[7];
  assign delayMatch4_reg_next[9] = delayMatch4_reg[8];
  assign delayMatch4_reg_next[10] = delayMatch4_reg[9];
  assign delayMatch4_reg_next[11] = delayMatch4_reg[10];
  assign delayMatch4_reg_next[12] = delayMatch4_reg[11];
  assign delayMatch4_reg_next[13] = delayMatch4_reg[12];
  assign delayMatch4_reg_next[14] = delayMatch4_reg[13];
  assign delayMatch4_reg_next[15] = delayMatch4_reg[14];
  assign delayMatch4_reg_next[16] = delayMatch4_reg[15];
  assign delayMatch4_reg_next[17] = delayMatch4_reg[16];



  SinglePortRAM_generic #(.AddrWidth(2),
                          .DataWidth(37)
                          )
                        u_Single_Port_RAM4 (.clk(clk),
                                            .enb(enb),
                                            .din(din),
                                            .addr(Constant17_out1),
                                            .we(Multiport_Switch5_out1_1),
                                            .dout(Single_Port_RAM4_out1)
                                            );

  assign dout4 = Single_Port_RAM4_out1;

endmodule  // save_values_real_G_x_0_11

