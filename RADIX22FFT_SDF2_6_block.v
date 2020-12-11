// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\RADIX22FFT_SDF2_6_block.v
// Created: 2020-12-08 16:13:17
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDF2_6_block
// Source Path: FDHT_N/FDHT/DFT-2/RADIX22FFT_SDF2_6
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDF2_6_block
          (clk,
           reset_x,
           enb,
           dout_5_1_re,
           dout_5_1_im,
           dout_5_1_vld,
           rd_6_Addr,
           rd_6_Enb,
           proc_6_enb,
           multiply_6_J,
           softReset,
           dout_6_1_re,
           dout_6_1_im,
           dout_6_1_vld,
           dinXTwdl_6_1_vld);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [40:0] dout_5_1_re;  // sfix41_En28
  input   signed [40:0] dout_5_1_im;  // sfix41_En28
  input   dout_5_1_vld;
  input   rd_6_Addr;
  input   rd_6_Enb;
  input   proc_6_enb;
  input   multiply_6_J;
  input   softReset;
  output  signed [40:0] dout_6_1_re;  // sfix41_En28
  output  signed [40:0] dout_6_1_im;  // sfix41_En28
  output  dout_6_1_vld;
  output  dinXTwdl_6_1_vld;

  wire saveEnb;
  wire dinVld;
  reg signed [40:0] din_re_dly1;  // sfix41_En28
  reg signed [40:0] btfin_re;  // sfix41_En28
  reg signed [40:0] din_im_dly1;  // sfix41_En28
  reg signed [40:0] btfin_im;  // sfix41_En28
  wire mulIn_vld;
  reg  procEnb_dly1;
  reg  btfin_vld;
  reg  x_vld;
  reg  x_vld_dly;
  reg signed [40:0] x_im;  // sfix41_En28
  reg signed [40:0] x_im_dly;  // sfix41_En28
  wire signed [40:0] wrData_re;  // sfix41_En28
  wire signed [40:0] wrData_im;  // sfix41_En28
  wire wrAddr;  // ufix1
  wire wrEnb;
  reg signed [40:0] twoLocationReg_0_MEM_re_0;  // sfix41
  reg signed [40:0] twoLocationReg_0_MEM_im_0;  // sfix41
  reg signed [40:0] twoLocationReg_0_MEM_re_1;  // sfix41
  reg signed [40:0] twoLocationReg_0_MEM_im_1;  // sfix41
  reg signed [40:0] twoLocationReg_0_dout_re_reg;  // sfix41
  reg signed [40:0] twoLocationReg_0_dout_im_reg;  // sfix41
  reg signed [40:0] twoLocationReg_0_MEM_re_0_next;  // sfix41_En28
  reg signed [40:0] twoLocationReg_0_MEM_im_0_next;  // sfix41_En28
  reg signed [40:0] twoLocationReg_0_MEM_re_1_next;  // sfix41_En28
  reg signed [40:0] twoLocationReg_0_MEM_im_1_next;  // sfix41_En28
  reg signed [40:0] twoLocationReg_0_dout_re_reg_next;  // sfix41_En28
  reg signed [40:0] twoLocationReg_0_dout_im_reg_next;  // sfix41_En28
  reg signed [40:0] x_re;  // sfix41_En28
  reg signed [40:0] x_re_dly;  // sfix41_En28
  reg  Radix22ButterflyG2_procEnb_dly;
  reg  Radix22ButterflyG2_procEnb_dly1;
  reg  Radix22ButterflyG2_procEnb_dly2;
  reg signed [41:0] Radix22ButterflyG2_btf1_re_reg;  // sfix42
  reg signed [41:0] Radix22ButterflyG2_btf1_im_reg;  // sfix42
  reg signed [41:0] Radix22ButterflyG2_btf2_re_reg;  // sfix42
  reg signed [41:0] Radix22ButterflyG2_btf2_im_reg;  // sfix42
  reg signed [40:0] Radix22ButterflyG2_din_re_dly;  // sfix41
  reg signed [40:0] Radix22ButterflyG2_din_im_dly;  // sfix41
  reg  Radix22ButterflyG2_din_vld_dly;
  reg signed [40:0] Radix22ButterflyG2_x_re_dly;  // sfix41
  reg signed [40:0] Radix22ButterflyG2_x_im_dly;  // sfix41
  reg  Radix22ButterflyG2_x_vld_dly;
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_re_dly1;  // sfix41
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_im_dly1;  // sfix41
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_re_dly2;  // sfix41
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_im_dly2;  // sfix41
  reg  Radix22ButterflyG2_multiply_J_dly1;
  reg  Radix22ButterflyG2_procEnb_dly_next;
  reg  Radix22ButterflyG2_procEnb_dly1_next;
  reg  Radix22ButterflyG2_procEnb_dly2_next;
  reg signed [41:0] Radix22ButterflyG2_btf1_re_reg_next;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_btf1_im_reg_next;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_btf2_re_reg_next;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_btf2_im_reg_next;  // sfix42_En28
  reg signed [40:0] Radix22ButterflyG2_din_re_dly_next;  // sfix41_En28
  reg signed [40:0] Radix22ButterflyG2_din_im_dly_next;  // sfix41_En28
  reg  Radix22ButterflyG2_din_vld_dly_next;
  reg signed [40:0] Radix22ButterflyG2_x_re_dly_next;  // sfix41_En28
  reg signed [40:0] Radix22ButterflyG2_x_im_dly_next;  // sfix41_En28
  reg  Radix22ButterflyG2_x_vld_dly_next;
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_re_dly1_next;  // sfix41_En28
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_im_dly1_next;  // sfix41_En28
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_re_dly2_next;  // sfix41_En28
  reg signed [40:0] Radix22ButterflyG2_dinXTwdl_im_dly2_next;  // sfix41_En28
  reg  Radix22ButterflyG2_multiply_J_dly1_next;
  reg signed [40:0] xf_re;  // sfix41_En28
  reg signed [40:0] xf_im;  // sfix41_En28
  reg  xf_vld;
  reg signed [40:0] dinf_re;  // sfix41_En28
  reg signed [40:0] dinf_im;  // sfix41_En28
  reg  dinf_vld;
  reg signed [40:0] btf1_re;  // sfix41_En28
  reg signed [40:0] btf1_im;  // sfix41_En28
  reg signed [40:0] btf2_re;  // sfix41_En28
  reg signed [40:0] btf2_im;  // sfix41_En28
  reg  btfout_vld;
  reg signed [41:0] Radix22ButterflyG2_add_cast;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_0;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_1;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_2;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_0;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_1;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_2;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_3;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_4;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_5;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_add_cast_6;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_3;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_4;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_5;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sub_cast_6;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sra_temp;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sra_temp_0;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sra_temp_1;  // sfix42_En28
  reg signed [41:0] Radix22ButterflyG2_sra_temp_2;  // sfix42_En28


  assign saveEnb =  ~ proc_6_enb;



  assign dinVld = dout_5_1_vld & saveEnb;



  always @(posedge clk)
    begin : intdelay_process
      if (reset_x == 1'b1) begin
        din_re_dly1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          din_re_dly1 <= dout_5_1_re;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_1_process
      if (reset_x == 1'b1) begin
        btfin_re <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          btfin_re <= din_re_dly1;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_2_process
      if (reset_x == 1'b1) begin
        din_im_dly1 <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          din_im_dly1 <= dout_5_1_im;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_3_process
      if (reset_x == 1'b1) begin
        btfin_im <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          btfin_im <= din_im_dly1;
        end
      end
    end



  assign mulIn_vld = dout_5_1_vld & proc_6_enb;



  always @(posedge clk)
    begin : intdelay_4_process
      if (reset_x == 1'b1) begin
        procEnb_dly1 <= 1'b0;
      end
      else begin
        if (enb) begin
          procEnb_dly1 <= mulIn_vld;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_5_process
      if (reset_x == 1'b1) begin
        btfin_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          btfin_vld <= procEnb_dly1;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_6_process
      if (reset_x == 1'b1) begin
        x_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld <= rd_6_Enb;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_7_process
      if (reset_x == 1'b1) begin
        x_vld_dly <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld_dly <= x_vld;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_8_process
      if (reset_x == 1'b1) begin
        x_im_dly <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          x_im_dly <= x_im;
        end
      end
    end



  // twoLocationReg_0
  always @(posedge clk)
    begin : twoLocationReg_0_process
      if (reset_x == 1'b1) begin
        twoLocationReg_0_MEM_re_0 <= 41'sh00000000000;
        twoLocationReg_0_MEM_im_0 <= 41'sh00000000000;
        twoLocationReg_0_MEM_re_1 <= 41'sh00000000000;
        twoLocationReg_0_MEM_im_1 <= 41'sh00000000000;
        twoLocationReg_0_dout_re_reg <= 41'sh00000000000;
        twoLocationReg_0_dout_im_reg <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          twoLocationReg_0_MEM_re_0 <= twoLocationReg_0_MEM_re_0_next;
          twoLocationReg_0_MEM_im_0 <= twoLocationReg_0_MEM_im_0_next;
          twoLocationReg_0_MEM_re_1 <= twoLocationReg_0_MEM_re_1_next;
          twoLocationReg_0_MEM_im_1 <= twoLocationReg_0_MEM_im_1_next;
          twoLocationReg_0_dout_re_reg <= twoLocationReg_0_dout_re_reg_next;
          twoLocationReg_0_dout_im_reg <= twoLocationReg_0_dout_im_reg_next;
        end
      end
    end

  always @(twoLocationReg_0_MEM_re_0, twoLocationReg_0_MEM_im_0,
       twoLocationReg_0_MEM_re_1, twoLocationReg_0_MEM_im_1,
       twoLocationReg_0_dout_re_reg, twoLocationReg_0_dout_im_reg, wrData_re,
       wrData_im, wrAddr, wrEnb, rd_6_Addr) begin
    twoLocationReg_0_MEM_re_0_next = twoLocationReg_0_MEM_re_0;
    twoLocationReg_0_MEM_im_0_next = twoLocationReg_0_MEM_im_0;
    twoLocationReg_0_MEM_re_1_next = twoLocationReg_0_MEM_re_1;
    twoLocationReg_0_MEM_im_1_next = twoLocationReg_0_MEM_im_1;
    twoLocationReg_0_dout_re_reg_next = twoLocationReg_0_dout_re_reg;
    twoLocationReg_0_dout_im_reg_next = twoLocationReg_0_dout_im_reg;
    if (rd_6_Addr) begin
      twoLocationReg_0_dout_re_reg_next = twoLocationReg_0_MEM_re_1;
      twoLocationReg_0_dout_im_reg_next = twoLocationReg_0_MEM_im_1;
    end
    else begin
      twoLocationReg_0_dout_re_reg_next = twoLocationReg_0_MEM_re_0;
      twoLocationReg_0_dout_im_reg_next = twoLocationReg_0_MEM_im_0;
    end
    if (wrEnb) begin
      if (wrAddr == 1'b1) begin
        twoLocationReg_0_MEM_re_1_next = wrData_re;
        twoLocationReg_0_MEM_im_1_next = wrData_im;
      end
      else begin
        twoLocationReg_0_MEM_re_0_next = wrData_re;
        twoLocationReg_0_MEM_im_0_next = wrData_im;
      end
    end
    x_re = twoLocationReg_0_dout_re_reg;
    x_im = twoLocationReg_0_dout_im_reg;
  end



  always @(posedge clk)
    begin : intdelay_9_process
      if (reset_x == 1'b1) begin
        x_re_dly <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          x_re_dly <= x_re;
        end
      end
    end



  // Radix22ButterflyG2
  always @(posedge clk)
    begin : Radix22ButterflyG2_process
      if (reset_x == 1'b1) begin
        Radix22ButterflyG2_procEnb_dly <= 1'b0;
        Radix22ButterflyG2_procEnb_dly1 <= 1'b0;
        Radix22ButterflyG2_procEnb_dly2 <= 1'b0;
        Radix22ButterflyG2_btf1_re_reg <= 42'sh00000000000;
        Radix22ButterflyG2_btf1_im_reg <= 42'sh00000000000;
        Radix22ButterflyG2_btf2_re_reg <= 42'sh00000000000;
        Radix22ButterflyG2_btf2_im_reg <= 42'sh00000000000;
        Radix22ButterflyG2_din_re_dly <= 41'sh00000000000;
        Radix22ButterflyG2_din_im_dly <= 41'sh00000000000;
        Radix22ButterflyG2_din_vld_dly <= 1'b0;
        Radix22ButterflyG2_x_re_dly <= 41'sh00000000000;
        Radix22ButterflyG2_x_im_dly <= 41'sh00000000000;
        Radix22ButterflyG2_x_vld_dly <= 1'b0;
        Radix22ButterflyG2_dinXTwdl_re_dly1 <= 41'sh00000000000;
        Radix22ButterflyG2_dinXTwdl_im_dly1 <= 41'sh00000000000;
        Radix22ButterflyG2_dinXTwdl_re_dly2 <= 41'sh00000000000;
        Radix22ButterflyG2_dinXTwdl_im_dly2 <= 41'sh00000000000;
        Radix22ButterflyG2_multiply_J_dly1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Radix22ButterflyG2_procEnb_dly <= Radix22ButterflyG2_procEnb_dly_next;
          Radix22ButterflyG2_procEnb_dly1 <= Radix22ButterflyG2_procEnb_dly1_next;
          Radix22ButterflyG2_procEnb_dly2 <= Radix22ButterflyG2_procEnb_dly2_next;
          Radix22ButterflyG2_btf1_re_reg <= Radix22ButterflyG2_btf1_re_reg_next;
          Radix22ButterflyG2_btf1_im_reg <= Radix22ButterflyG2_btf1_im_reg_next;
          Radix22ButterflyG2_btf2_re_reg <= Radix22ButterflyG2_btf2_re_reg_next;
          Radix22ButterflyG2_btf2_im_reg <= Radix22ButterflyG2_btf2_im_reg_next;
          Radix22ButterflyG2_din_re_dly <= Radix22ButterflyG2_din_re_dly_next;
          Radix22ButterflyG2_din_im_dly <= Radix22ButterflyG2_din_im_dly_next;
          Radix22ButterflyG2_din_vld_dly <= Radix22ButterflyG2_din_vld_dly_next;
          Radix22ButterflyG2_x_re_dly <= Radix22ButterflyG2_x_re_dly_next;
          Radix22ButterflyG2_x_im_dly <= Radix22ButterflyG2_x_im_dly_next;
          Radix22ButterflyG2_x_vld_dly <= Radix22ButterflyG2_x_vld_dly_next;
          Radix22ButterflyG2_dinXTwdl_re_dly1 <= Radix22ButterflyG2_dinXTwdl_re_dly1_next;
          Radix22ButterflyG2_dinXTwdl_im_dly1 <= Radix22ButterflyG2_dinXTwdl_im_dly1_next;
          Radix22ButterflyG2_dinXTwdl_re_dly2 <= Radix22ButterflyG2_dinXTwdl_re_dly2_next;
          Radix22ButterflyG2_dinXTwdl_im_dly2 <= Radix22ButterflyG2_dinXTwdl_im_dly2_next;
          Radix22ButterflyG2_multiply_J_dly1 <= Radix22ButterflyG2_multiply_J_dly1_next;
        end
      end
    end

  always @(Radix22ButterflyG2_procEnb_dly, Radix22ButterflyG2_procEnb_dly1,
       Radix22ButterflyG2_procEnb_dly2, Radix22ButterflyG2_btf1_re_reg,
       Radix22ButterflyG2_btf1_im_reg, Radix22ButterflyG2_btf2_re_reg,
       Radix22ButterflyG2_btf2_im_reg, Radix22ButterflyG2_din_re_dly,
       Radix22ButterflyG2_din_im_dly, Radix22ButterflyG2_din_vld_dly,
       Radix22ButterflyG2_x_re_dly, Radix22ButterflyG2_x_im_dly,
       Radix22ButterflyG2_x_vld_dly, Radix22ButterflyG2_dinXTwdl_re_dly1,
       Radix22ButterflyG2_dinXTwdl_im_dly1, Radix22ButterflyG2_dinXTwdl_re_dly2,
       Radix22ButterflyG2_dinXTwdl_im_dly2, Radix22ButterflyG2_multiply_J_dly1,
       dout_5_1_re, dout_5_1_im, dinVld, btfin_re, btfin_im, btfin_vld,
       x_re_dly, x_im_dly, x_vld_dly, multiply_6_J) begin
    Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_btf1_re_reg;
    Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_btf1_im_reg;
    Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_btf2_re_reg;
    Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_btf2_im_reg;
    Radix22ButterflyG2_x_re_dly_next = x_re_dly;
    Radix22ButterflyG2_x_im_dly_next = x_im_dly;
    Radix22ButterflyG2_x_vld_dly_next = x_vld_dly;
    Radix22ButterflyG2_din_re_dly_next = dout_5_1_re;
    Radix22ButterflyG2_din_im_dly_next = dout_5_1_im;
    Radix22ButterflyG2_din_vld_dly_next = dinVld;
    Radix22ButterflyG2_procEnb_dly2_next = Radix22ButterflyG2_procEnb_dly1;
    Radix22ButterflyG2_procEnb_dly1_next = Radix22ButterflyG2_procEnb_dly;
    Radix22ButterflyG2_procEnb_dly_next = btfin_vld;
    if (Radix22ButterflyG2_multiply_J_dly1) begin
      Radix22ButterflyG2_add_cast_1 = {x_re_dly[40], x_re_dly};
      Radix22ButterflyG2_add_cast_2 = {Radix22ButterflyG2_dinXTwdl_im_dly2[40], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_add_cast_1 + Radix22ButterflyG2_add_cast_2;
      Radix22ButterflyG2_sub_cast_1 = {x_re_dly[40], x_re_dly};
      Radix22ButterflyG2_sub_cast_2 = {Radix22ButterflyG2_dinXTwdl_im_dly2[40], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_sub_cast_1 - Radix22ButterflyG2_sub_cast_2;
      Radix22ButterflyG2_add_cast_5 = {x_im_dly[40], x_im_dly};
      Radix22ButterflyG2_add_cast_6 = {Radix22ButterflyG2_dinXTwdl_re_dly2[40], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_add_cast_5 + Radix22ButterflyG2_add_cast_6;
      Radix22ButterflyG2_sub_cast_5 = {x_im_dly[40], x_im_dly};
      Radix22ButterflyG2_sub_cast_6 = {Radix22ButterflyG2_dinXTwdl_re_dly2[40], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_sub_cast_5 - Radix22ButterflyG2_sub_cast_6;
    end
    else begin
      Radix22ButterflyG2_add_cast = {x_re_dly[40], x_re_dly};
      Radix22ButterflyG2_add_cast_0 = {Radix22ButterflyG2_dinXTwdl_re_dly2[40], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_add_cast + Radix22ButterflyG2_add_cast_0;
      Radix22ButterflyG2_sub_cast = {x_re_dly[40], x_re_dly};
      Radix22ButterflyG2_sub_cast_0 = {Radix22ButterflyG2_dinXTwdl_re_dly2[40], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_sub_cast - Radix22ButterflyG2_sub_cast_0;
      Radix22ButterflyG2_add_cast_3 = {x_im_dly[40], x_im_dly};
      Radix22ButterflyG2_add_cast_4 = {Radix22ButterflyG2_dinXTwdl_im_dly2[40], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_add_cast_3 + Radix22ButterflyG2_add_cast_4;
      Radix22ButterflyG2_sub_cast_3 = {x_im_dly[40], x_im_dly};
      Radix22ButterflyG2_sub_cast_4 = {Radix22ButterflyG2_dinXTwdl_im_dly2[40], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_sub_cast_3 - Radix22ButterflyG2_sub_cast_4;
    end
    Radix22ButterflyG2_dinXTwdl_re_dly2_next = Radix22ButterflyG2_dinXTwdl_re_dly1;
    Radix22ButterflyG2_dinXTwdl_im_dly2_next = Radix22ButterflyG2_dinXTwdl_im_dly1;
    Radix22ButterflyG2_dinXTwdl_re_dly1_next = btfin_re;
    Radix22ButterflyG2_dinXTwdl_im_dly1_next = btfin_im;
    Radix22ButterflyG2_multiply_J_dly1_next = multiply_6_J;
    xf_re = Radix22ButterflyG2_x_re_dly;
    xf_im = Radix22ButterflyG2_x_im_dly;
    xf_vld = Radix22ButterflyG2_x_vld_dly;
    dinf_re = Radix22ButterflyG2_din_re_dly;
    dinf_im = Radix22ButterflyG2_din_im_dly;
    dinf_vld = Radix22ButterflyG2_din_vld_dly;
    Radix22ButterflyG2_sra_temp = Radix22ButterflyG2_btf1_re_reg >>> 8'd1;
    btf1_re = Radix22ButterflyG2_sra_temp[40:0];
    Radix22ButterflyG2_sra_temp_0 = Radix22ButterflyG2_btf1_im_reg >>> 8'd1;
    btf1_im = Radix22ButterflyG2_sra_temp_0[40:0];
    Radix22ButterflyG2_sra_temp_1 = Radix22ButterflyG2_btf2_re_reg >>> 8'd1;
    btf2_re = Radix22ButterflyG2_sra_temp_1[40:0];
    Radix22ButterflyG2_sra_temp_2 = Radix22ButterflyG2_btf2_im_reg >>> 8'd1;
    btf2_im = Radix22ButterflyG2_sra_temp_2[40:0];
    btfout_vld = Radix22ButterflyG2_procEnb_dly2;
  end



  SDFCommutator6_block u_SDFCOMMUTATOR_6 (.clk(clk),
                                          .reset_x(reset_x),
                                          .enb(enb),
                                          .dout_5_1_vld(dout_5_1_vld),
                                          .xf_re(xf_re),  // sfix41_En28
                                          .xf_im(xf_im),  // sfix41_En28
                                          .xf_vld(xf_vld),
                                          .dinf_re(dinf_re),  // sfix41_En28
                                          .dinf_im(dinf_im),  // sfix41_En28
                                          .dinf_vld(dinf_vld),
                                          .btf1_re(btf1_re),  // sfix41_En28
                                          .btf1_im(btf1_im),  // sfix41_En28
                                          .btf2_re(btf2_re),  // sfix41_En28
                                          .btf2_im(btf2_im),  // sfix41_En28
                                          .btfout_vld(btfout_vld),
                                          .softReset(softReset),
                                          .wrData_re(wrData_re),  // sfix41_En28
                                          .wrData_im(wrData_im),  // sfix41_En28
                                          .wrAddr(wrAddr),  // ufix1
                                          .wrEnb(wrEnb),
                                          .dout_6_1_re(dout_6_1_re),  // sfix41_En28
                                          .dout_6_1_im(dout_6_1_im),  // sfix41_En28
                                          .dout_6_1_vld(dout_6_1_vld)
                                          );

  assign dinXTwdl_6_1_vld = btfin_vld;

endmodule  // RADIX22FFT_SDF2_6_block

