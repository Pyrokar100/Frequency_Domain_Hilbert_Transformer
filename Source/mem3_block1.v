// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\henkindama2\newhope_cambios\mem3_block1.v
// Created: 2020-12-20 13:10:05
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: mem3_block1
// Source Path: newhope_cambios/FDHT/taking_imaginary_part/Mem2/mem3
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module mem3_block1
          (clk,
           reset_x,
           enb,
           In1,
           In2,
           Out1);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [14:0] In1;  // sfix15_En5
  input   [7:0] In2;  // uint8
  output  signed [14:0] Out1;  // sfix15_En5


  wire [1:0] Constant13_out1;  // ufix2
  wire Constant10_out1;
  wire Constant9_out1;
  wire Multiport_Switch2_out1;
  reg  [0:23] delayMatch_reg;  // ufix1 [24]
  wire [0:23] delayMatch_reg_next;  // ufix1 [24]
  wire Multiport_Switch2_out1_1;
  wire signed [14:0] Single_Port_RAM20_out1;  // sfix15_En5


  assign Constant13_out1 = 2'b01;



  assign Constant10_out1 = 1'b0;



  assign Constant9_out1 = 1'b1;



  assign Multiport_Switch2_out1 = (In2 == 8'b00000000 ? Constant10_out1 :
              (In2 == 8'b00000001 ? Constant10_out1 :
              (In2 == 8'b00000010 ? Constant10_out1 :
              (In2 == 8'b00000011 ? Constant10_out1 :
              (In2 == 8'b00000100 ? Constant10_out1 :
              (In2 == 8'b00000101 ? Constant10_out1 :
              (In2 == 8'b00000110 ? Constant10_out1 :
              (In2 == 8'b00000111 ? Constant10_out1 :
              (In2 == 8'b00001000 ? Constant10_out1 :
              (In2 == 8'b00001001 ? Constant10_out1 :
              (In2 == 8'b00001010 ? Constant10_out1 :
              (In2 == 8'b00001011 ? Constant10_out1 :
              (In2 == 8'b00001100 ? Constant10_out1 :
              (In2 == 8'b00001101 ? Constant10_out1 :
              (In2 == 8'b00001110 ? Constant10_out1 :
              (In2 == 8'b00001111 ? Constant10_out1 :
              (In2 == 8'b00010000 ? Constant10_out1 :
              (In2 == 8'b00010001 ? Constant9_out1 :
              (In2 == 8'b00010010 ? Constant10_out1 :
              (In2 == 8'b00010011 ? Constant10_out1 :
              (In2 == 8'b00010100 ? Constant10_out1 :
              (In2 == 8'b00010101 ? Constant10_out1 :
              (In2 == 8'b00010110 ? Constant10_out1 :
              (In2 == 8'b00010111 ? Constant10_out1 :
              (In2 == 8'b00011000 ? Constant10_out1 :
              (In2 == 8'b00011001 ? Constant10_out1 :
              (In2 == 8'b00011010 ? Constant10_out1 :
              (In2 == 8'b00011011 ? Constant10_out1 :
              (In2 == 8'b00011100 ? Constant10_out1 :
              (In2 == 8'b00011101 ? Constant10_out1 :
              (In2 == 8'b00011110 ? Constant10_out1 :
              (In2 == 8'b00011111 ? Constant10_out1 :
              (In2 == 8'b00100000 ? Constant10_out1 :
              (In2 == 8'b00100001 ? Constant10_out1 :
              (In2 == 8'b00100010 ? Constant10_out1 :
              (In2 == 8'b00100011 ? Constant10_out1 :
              (In2 == 8'b00100100 ? Constant10_out1 :
              (In2 == 8'b00100101 ? Constant10_out1 :
              (In2 == 8'b00100110 ? Constant10_out1 :
              (In2 == 8'b00100111 ? Constant10_out1 :
              (In2 == 8'b00101000 ? Constant10_out1 :
              (In2 == 8'b00101001 ? Constant10_out1 :
              (In2 == 8'b00101010 ? Constant10_out1 :
              (In2 == 8'b00101011 ? Constant10_out1 :
              (In2 == 8'b00101100 ? Constant10_out1 :
              (In2 == 8'b00101101 ? Constant10_out1 :
              (In2 == 8'b00101110 ? Constant10_out1 :
              (In2 == 8'b00101111 ? Constant10_out1 :
              (In2 == 8'b00110000 ? Constant10_out1 :
              Constant10_out1)))))))))))))))))))))))))))))))))))))))))))))))));



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
        delayMatch_reg[18] <= 1'b0;
        delayMatch_reg[19] <= 1'b0;
        delayMatch_reg[20] <= 1'b0;
        delayMatch_reg[21] <= 1'b0;
        delayMatch_reg[22] <= 1'b0;
        delayMatch_reg[23] <= 1'b0;
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
          delayMatch_reg[18] <= delayMatch_reg_next[18];
          delayMatch_reg[19] <= delayMatch_reg_next[19];
          delayMatch_reg[20] <= delayMatch_reg_next[20];
          delayMatch_reg[21] <= delayMatch_reg_next[21];
          delayMatch_reg[22] <= delayMatch_reg_next[22];
          delayMatch_reg[23] <= delayMatch_reg_next[23];
        end
      end
    end

  assign Multiport_Switch2_out1_1 = delayMatch_reg[23];
  assign delayMatch_reg_next[0] = Multiport_Switch2_out1;
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
  assign delayMatch_reg_next[18] = delayMatch_reg[17];
  assign delayMatch_reg_next[19] = delayMatch_reg[18];
  assign delayMatch_reg_next[20] = delayMatch_reg[19];
  assign delayMatch_reg_next[21] = delayMatch_reg[20];
  assign delayMatch_reg_next[22] = delayMatch_reg[21];
  assign delayMatch_reg_next[23] = delayMatch_reg[22];



  SinglePortRAM_generic #(.AddrWidth(2),
                          .DataWidth(15)
                          )
                        u_Single_Port_RAM20 (.clk(clk),
                                             .enb(enb),
                                             .din(In1),
                                             .addr(Constant13_out1),
                                             .we(Multiport_Switch2_out1_1),
                                             .dout(Single_Port_RAM20_out1)
                                             );

  assign Out1 = Single_Port_RAM20_out1;

endmodule  // mem3_block1

