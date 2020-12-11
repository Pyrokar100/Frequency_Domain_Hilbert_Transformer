// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\RADIX22FFT_CTRL1_3.v
// Created: 2020-12-08 16:13:17
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_CTRL1_3
// Source Path: FDHT_N/FDHT/DFT/RADIX22FFT_CTRL1_3
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_CTRL1_3
          (clk,
           reset_x,
           enb,
           dinXTwdl_3_1_vld,
           dinXTwdl_3_1_vld_1,
           softReset,
           rd_3_Addr,
           rd_3_Enb,
           proc_3_enb,
           multiply_3_J);


  input   clk;
  input   reset_x;
  input   enb;
  input   dinXTwdl_3_1_vld;
  input   dinXTwdl_3_1_vld_1;
  input   softReset;
  output  [2:0] rd_3_Addr;  // ufix3
  output  rd_3_Enb;
  output  proc_3_enb;
  output  multiply_3_J;

  reg [2:0] SDFController_wrCount;  // ufix3
  reg [1:0] SDFController_wrState;  // ufix2
  reg [1:0] SDFController_rdState;  // ufix2
  reg [2:0] SDFController_rdAddr_reg;  // ufix3
  reg  SDFController_procEnb_reg;
  reg [1:0] SDFController_multjState;  // ufix2
  reg  SDFController_multiply_J_reg;
  reg [2:0] SDFController_wrCount_next;  // ufix3
  reg [1:0] SDFController_wrState_next;  // ufix2
  reg [1:0] SDFController_rdState_next;  // ufix2
  reg [2:0] SDFController_rdAddr_reg_next;  // ufix3
  reg  SDFController_procEnb_reg_next;
  reg [1:0] SDFController_multjState_next;  // ufix2
  reg  SDFController_multiply_J_reg_next;
  reg [2:0] rd_3_Addr_1;  // ufix3
  reg  rd_3_Enb_1;
  reg  proc_3_enb_1;
  reg  multiply_3_J_1;


  // SDFController
  always @(posedge clk)
    begin : SDFController_process
      if (reset_x == 1'b1) begin
        SDFController_wrCount <= 3'b000;
        SDFController_rdAddr_reg <= 3'b000;
        SDFController_wrState <= 2'b00;
        SDFController_rdState <= 2'b00;
        SDFController_multjState <= 2'b00;
        SDFController_procEnb_reg <= 1'b0;
        SDFController_multiply_J_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          SDFController_wrCount <= SDFController_wrCount_next;
          SDFController_wrState <= SDFController_wrState_next;
          SDFController_rdState <= SDFController_rdState_next;
          SDFController_rdAddr_reg <= SDFController_rdAddr_reg_next;
          SDFController_procEnb_reg <= SDFController_procEnb_reg_next;
          SDFController_multjState <= SDFController_multjState_next;
          SDFController_multiply_J_reg <= SDFController_multiply_J_reg_next;
        end
      end
    end

  always @(SDFController_wrCount, SDFController_wrState, SDFController_rdState,
       SDFController_rdAddr_reg, SDFController_procEnb_reg,
       SDFController_multjState, SDFController_multiply_J_reg, dinXTwdl_3_1_vld,
       dinXTwdl_3_1_vld_1) begin
    SDFController_wrCount_next = SDFController_wrCount;
    SDFController_wrState_next = SDFController_wrState;
    SDFController_rdState_next = SDFController_rdState;
    SDFController_rdAddr_reg_next = SDFController_rdAddr_reg;
    SDFController_procEnb_reg_next = SDFController_procEnb_reg;
    SDFController_multjState_next = SDFController_multjState;
    SDFController_multiply_J_reg_next = SDFController_multiply_J_reg;
    case ( SDFController_multjState)
      2'b00 :
        begin
          SDFController_multjState_next = 2'b00;
          SDFController_multiply_J_reg_next = 1'b0;
          if (SDFController_rdState == 2'b01) begin
            SDFController_multjState_next = 2'b01;
          end
        end
      2'b01 :
        begin
          SDFController_multiply_J_reg_next = 1'b0;
          if (SDFController_rdState == 2'b10) begin
            SDFController_multjState_next = 2'b10;
          end
        end
      2'b10 :
        begin
          SDFController_multiply_J_reg_next = 1'b0;
          if (SDFController_rdState == 2'b01) begin
            SDFController_multjState_next = 2'b11;
            SDFController_multiply_J_reg_next = 1'b1;
          end
        end
      2'b11 :
        begin
          if (SDFController_rdState == 2'b01) begin
            SDFController_multjState_next = 2'b11;
            SDFController_multiply_J_reg_next = 1'b1;
          end
          else begin
            SDFController_multiply_J_reg_next = 1'b0;
            SDFController_multjState_next = 2'b00;
          end
        end
      default :
        begin
          SDFController_multjState_next = 2'b00;
          SDFController_multiply_J_reg_next = 1'b0;
        end
    endcase
    case ( SDFController_rdState)
      2'b00 :
        begin
          SDFController_rdState_next = 2'b00;
          SDFController_rdAddr_reg_next = 3'b000;
          rd_3_Enb_1 = 1'b0;
          if (dinXTwdl_3_1_vld && (SDFController_wrCount == 3'b111)) begin
            SDFController_rdState_next = 2'b01;
          end
        end
      2'b01 :
        begin
          SDFController_rdState_next = 2'b01;
          rd_3_Enb_1 = dinXTwdl_3_1_vld_1;
          if (dinXTwdl_3_1_vld_1) begin
            if (SDFController_rdAddr_reg == 3'b111) begin
              SDFController_rdState_next = 2'b10;
            end
            SDFController_rdAddr_reg_next = SDFController_rdAddr_reg + 3'b001;
          end
        end
      2'b10 :
        begin
          rd_3_Enb_1 = 1'b0;
          if (SDFController_rdAddr_reg == 3'b111) begin
            if (dinXTwdl_3_1_vld && (SDFController_wrCount == 3'b111)) begin
              SDFController_rdState_next = 2'b01;
            end
            else begin
              SDFController_rdState_next = 2'b00;
            end
          end
          SDFController_rdAddr_reg_next = SDFController_rdAddr_reg + 3'b001;
        end
      default :
        begin
          SDFController_rdState_next = 2'b00;
          SDFController_rdAddr_reg_next = 3'b000;
          rd_3_Enb_1 = 1'b0;
        end
    endcase
    case ( SDFController_wrState)
      2'b00 :
        begin
          SDFController_wrState_next = 2'b00;
          SDFController_wrCount_next = 3'b000;
          SDFController_procEnb_reg_next = 1'b0;
          if (dinXTwdl_3_1_vld) begin
            SDFController_wrState_next = 2'b01;
            SDFController_wrCount_next = 3'b001;
          end
        end
      2'b01 :
        begin
          SDFController_wrState_next = 2'b01;
          SDFController_procEnb_reg_next = 1'b0;
          if (dinXTwdl_3_1_vld) begin
            if (SDFController_wrCount == 3'b111) begin
              SDFController_wrState_next = 2'b10;
              SDFController_procEnb_reg_next = 1'b1;
            end
            else begin
              SDFController_wrState_next = 2'b01;
            end
            SDFController_wrCount_next = SDFController_wrCount + 3'b001;
          end
        end
      2'b10 :
        begin
          SDFController_wrState_next = 2'b10;
          if (dinXTwdl_3_1_vld) begin
            if (SDFController_wrCount == 3'b111) begin
              SDFController_wrState_next = 2'b01;
              SDFController_procEnb_reg_next = 1'b0;
            end
            else begin
              SDFController_wrState_next = 2'b10;
              SDFController_procEnb_reg_next = 1'b1;
            end
            SDFController_wrCount_next = SDFController_wrCount + 3'b001;
          end
        end
      default :
        begin
          SDFController_wrState_next = 2'b00;
          SDFController_wrCount_next = 3'b111;
          SDFController_procEnb_reg_next = 1'b0;
        end
    endcase
    rd_3_Addr_1 = SDFController_rdAddr_reg;
    proc_3_enb_1 = SDFController_procEnb_reg;
    multiply_3_J_1 = SDFController_multiply_J_reg;
  end



  assign rd_3_Addr = rd_3_Addr_1;

  assign rd_3_Enb = rd_3_Enb_1;

  assign proc_3_enb = proc_3_enb_1;

  assign multiply_3_J = multiply_3_J_1;

endmodule  // RADIX22FFT_CTRL1_3

