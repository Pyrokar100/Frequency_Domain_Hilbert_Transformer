// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\RADIX22FFT_SDF1_1_block.v
// Created: 2020-12-08 16:13:17
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDF1_1_block
// Source Path: FDHT_N/FDHT/DFT-2/RADIX22FFT_SDF1_1
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDF1_1_block
          (clk,
           reset_x,
           enb,
           din_1_1_re_dly,
           din_1_1_im_dly,
           din_1_vld_dly,
           rd_1_Addr,
           rd_1_Enb,
           twdl_1_1_re,
           twdl_1_1_im,
           twdl_1_1_vld,
           proc_1_enb,
           softReset,
           dout_1_1_re,
           dout_1_1_im,
           dout_1_1_vld,
           dinXTwdl_1_1_vld);


  input   clk;
  input   reset_x;
  input   enb;
  input   signed [40:0] din_1_1_re_dly;  // sfix41_En28
  input   signed [40:0] din_1_1_im_dly;  // sfix41_En28
  input   din_1_vld_dly;
  input   [4:0] rd_1_Addr;  // ufix5
  input   rd_1_Enb;
  input   signed [40:0] twdl_1_1_re;  // sfix41_En39
  input   signed [40:0] twdl_1_1_im;  // sfix41_En39
  input   twdl_1_1_vld;
  input   proc_1_enb;
  input   softReset;
  output  signed [40:0] dout_1_1_re;  // sfix41_En28
  output  signed [40:0] dout_1_1_im;  // sfix41_En28
  output  dout_1_1_vld;
  output  dinXTwdl_1_1_vld;

  reg signed [40:0] dinXTwdl_re;  // sfix41_En28
  reg signed [40:0] dinXTwdl_im;  // sfix41_En28
  reg  dinXTwdl_1_1_vld_1;
  reg  x_vld;
  wire signed [40:0] wrData_im;  // sfix41_En28
  wire [4:0] wrAddr;  // ufix5
  wire wrEnb;
  wire signed [40:0] x_im;  // sfix41_En28
  wire signed [40:0] wrData_re;  // sfix41_En28
  wire signed [40:0] x_re;  // sfix41_En28
  reg signed [41:0] Radix22ButterflyG1_btf1_re_reg;  // sfix42
  reg signed [41:0] Radix22ButterflyG1_btf1_im_reg;  // sfix42
  reg signed [41:0] Radix22ButterflyG1_btf2_re_reg;  // sfix42
  reg signed [41:0] Radix22ButterflyG1_btf2_im_reg;  // sfix42
  reg signed [40:0] Radix22ButterflyG1_x_re_dly1;  // sfix41
  reg signed [40:0] Radix22ButterflyG1_x_im_dly1;  // sfix41
  reg  Radix22ButterflyG1_x_vld_dly1;
  reg signed [40:0] Radix22ButterflyG1_dinXtwdl_re_dly1;  // sfix41
  reg signed [40:0] Radix22ButterflyG1_dinXtwdl_im_dly1;  // sfix41
  reg signed [40:0] Radix22ButterflyG1_dinXtwdl_re_dly2;  // sfix41
  reg signed [40:0] Radix22ButterflyG1_dinXtwdl_im_dly2;  // sfix41
  reg  Radix22ButterflyG1_dinXtwdl_vld_dly1;
  reg  Radix22ButterflyG1_dinXtwdl_vld_dly2;
  wire signed [41:0] Radix22ButterflyG1_btf1_re_reg_next;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_btf1_im_reg_next;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_btf2_re_reg_next;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_btf2_im_reg_next;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_add_cast;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_add_cast_1;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sub_cast;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sub_cast_1;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_add_cast_2;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_add_cast_3;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sub_cast_2;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sub_cast_3;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sra_temp;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sra_temp_1;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sra_temp_2;  // sfix42_En28
  wire signed [41:0] Radix22ButterflyG1_sra_temp_3;  // sfix42_En28
  reg signed [40:0] xf_re;  // sfix41_En28
  reg signed [40:0] xf_im;  // sfix41_En28
  reg  xf_vld;
  wire signed [40:0] dinXTwdlf_re;  // sfix41_En28
  wire signed [40:0] dinXTwdlf_im;  // sfix41_En28
  wire dinxTwdlf_vld;
  wire signed [40:0] btf1_re;  // sfix41_En28
  wire signed [40:0] btf1_im;  // sfix41_En28
  wire signed [40:0] btf2_re;  // sfix41_En28
  wire signed [40:0] btf2_im;  // sfix41_En28
  reg  btf_vld;


  always @(posedge clk)
    begin : intdelay_process
      if (reset_x == 1'b1) begin
        dinXTwdl_re <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          dinXTwdl_re <= din_1_1_re_dly;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_1_process
      if (reset_x == 1'b1) begin
        dinXTwdl_im <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          dinXTwdl_im <= din_1_1_im_dly;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_2_process
      if (reset_x == 1'b1) begin
        dinXTwdl_1_1_vld_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          dinXTwdl_1_1_vld_1 <= din_1_vld_dly;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_3_process
      if (reset_x == 1'b1) begin
        x_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld <= rd_1_Enb;
        end
      end
    end



  SimpleDualPortRAM_generic #(.AddrWidth(5),
                              .DataWidth(41)
                              )
                            u_dataMEM_im_0_1 (.clk(clk),
                                              .enb(enb),
                                              .wr_din(wrData_im),
                                              .wr_addr(wrAddr),
                                              .wr_en(wrEnb),
                                              .rd_addr(rd_1_Addr),
                                              .rd_dout(x_im)
                                              );

  SimpleDualPortRAM_generic #(.AddrWidth(5),
                              .DataWidth(41)
                              )
                            u_dataMEM_re_0_1 (.clk(clk),
                                              .enb(enb),
                                              .wr_din(wrData_re),
                                              .wr_addr(wrAddr),
                                              .wr_en(wrEnb),
                                              .rd_addr(rd_1_Addr),
                                              .rd_dout(x_re)
                                              );

  // Radix22ButterflyG1
  always @(posedge clk)
    begin : Radix22ButterflyG1_process
      if (reset_x == 1'b1) begin
        Radix22ButterflyG1_btf1_re_reg <= 42'sh00000000000;
        Radix22ButterflyG1_btf1_im_reg <= 42'sh00000000000;
        Radix22ButterflyG1_btf2_re_reg <= 42'sh00000000000;
        Radix22ButterflyG1_btf2_im_reg <= 42'sh00000000000;
        Radix22ButterflyG1_x_re_dly1 <= 41'sh00000000000;
        Radix22ButterflyG1_x_im_dly1 <= 41'sh00000000000;
        Radix22ButterflyG1_x_vld_dly1 <= 1'b0;
        xf_re <= 41'sh00000000000;
        xf_im <= 41'sh00000000000;
        xf_vld <= 1'b0;
        Radix22ButterflyG1_dinXtwdl_re_dly1 <= 41'sh00000000000;
        Radix22ButterflyG1_dinXtwdl_im_dly1 <= 41'sh00000000000;
        Radix22ButterflyG1_dinXtwdl_re_dly2 <= 41'sh00000000000;
        Radix22ButterflyG1_dinXtwdl_im_dly2 <= 41'sh00000000000;
        Radix22ButterflyG1_dinXtwdl_vld_dly1 <= 1'b0;
        Radix22ButterflyG1_dinXtwdl_vld_dly2 <= 1'b0;
        btf_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          Radix22ButterflyG1_btf1_re_reg <= Radix22ButterflyG1_btf1_re_reg_next;
          Radix22ButterflyG1_btf1_im_reg <= Radix22ButterflyG1_btf1_im_reg_next;
          Radix22ButterflyG1_btf2_re_reg <= Radix22ButterflyG1_btf2_re_reg_next;
          Radix22ButterflyG1_btf2_im_reg <= Radix22ButterflyG1_btf2_im_reg_next;
          xf_re <= Radix22ButterflyG1_x_re_dly1;
          xf_im <= Radix22ButterflyG1_x_im_dly1;
          xf_vld <= Radix22ButterflyG1_x_vld_dly1;
          btf_vld <= Radix22ButterflyG1_dinXtwdl_vld_dly2;
          Radix22ButterflyG1_dinXtwdl_vld_dly2 <= Radix22ButterflyG1_dinXtwdl_vld_dly1;
          Radix22ButterflyG1_dinXtwdl_re_dly2 <= Radix22ButterflyG1_dinXtwdl_re_dly1;
          Radix22ButterflyG1_dinXtwdl_im_dly2 <= Radix22ButterflyG1_dinXtwdl_im_dly1;
          Radix22ButterflyG1_dinXtwdl_re_dly1 <= dinXTwdl_re;
          Radix22ButterflyG1_dinXtwdl_im_dly1 <= dinXTwdl_im;
          Radix22ButterflyG1_x_re_dly1 <= x_re;
          Radix22ButterflyG1_x_im_dly1 <= x_im;
          Radix22ButterflyG1_x_vld_dly1 <= x_vld;
          Radix22ButterflyG1_dinXtwdl_vld_dly1 <= proc_1_enb && dinXTwdl_1_1_vld_1;
        end
      end
    end

  assign dinxTwdlf_vld = ( ! proc_1_enb) && dinXTwdl_1_1_vld_1;
  assign Radix22ButterflyG1_add_cast = {Radix22ButterflyG1_x_re_dly1[40], Radix22ButterflyG1_x_re_dly1};
  assign Radix22ButterflyG1_add_cast_1 = {Radix22ButterflyG1_dinXtwdl_re_dly2[40], Radix22ButterflyG1_dinXtwdl_re_dly2};
  assign Radix22ButterflyG1_btf1_re_reg_next = Radix22ButterflyG1_add_cast + Radix22ButterflyG1_add_cast_1;
  assign Radix22ButterflyG1_sub_cast = {Radix22ButterflyG1_x_re_dly1[40], Radix22ButterflyG1_x_re_dly1};
  assign Radix22ButterflyG1_sub_cast_1 = {Radix22ButterflyG1_dinXtwdl_re_dly2[40], Radix22ButterflyG1_dinXtwdl_re_dly2};
  assign Radix22ButterflyG1_btf2_re_reg_next = Radix22ButterflyG1_sub_cast - Radix22ButterflyG1_sub_cast_1;
  assign Radix22ButterflyG1_add_cast_2 = {Radix22ButterflyG1_x_im_dly1[40], Radix22ButterflyG1_x_im_dly1};
  assign Radix22ButterflyG1_add_cast_3 = {Radix22ButterflyG1_dinXtwdl_im_dly2[40], Radix22ButterflyG1_dinXtwdl_im_dly2};
  assign Radix22ButterflyG1_btf1_im_reg_next = Radix22ButterflyG1_add_cast_2 + Radix22ButterflyG1_add_cast_3;
  assign Radix22ButterflyG1_sub_cast_2 = {Radix22ButterflyG1_x_im_dly1[40], Radix22ButterflyG1_x_im_dly1};
  assign Radix22ButterflyG1_sub_cast_3 = {Radix22ButterflyG1_dinXtwdl_im_dly2[40], Radix22ButterflyG1_dinXtwdl_im_dly2};
  assign Radix22ButterflyG1_btf2_im_reg_next = Radix22ButterflyG1_sub_cast_2 - Radix22ButterflyG1_sub_cast_3;
  assign dinXTwdlf_re = dinXTwdl_re;
  assign dinXTwdlf_im = dinXTwdl_im;
  assign Radix22ButterflyG1_sra_temp = Radix22ButterflyG1_btf1_re_reg >>> 8'd1;
  assign btf1_re = Radix22ButterflyG1_sra_temp[40:0];
  assign Radix22ButterflyG1_sra_temp_1 = Radix22ButterflyG1_btf1_im_reg >>> 8'd1;
  assign btf1_im = Radix22ButterflyG1_sra_temp_1[40:0];
  assign Radix22ButterflyG1_sra_temp_2 = Radix22ButterflyG1_btf2_re_reg >>> 8'd1;
  assign btf2_re = Radix22ButterflyG1_sra_temp_2[40:0];
  assign Radix22ButterflyG1_sra_temp_3 = Radix22ButterflyG1_btf2_im_reg >>> 8'd1;
  assign btf2_im = Radix22ButterflyG1_sra_temp_3[40:0];



  SDFCommutator1_block u_SDFCOMMUTATOR_1 (.clk(clk),
                                          .reset_x(reset_x),
                                          .enb(enb),
                                          .din_1_vld_dly(din_1_vld_dly),
                                          .xf_re(xf_re),  // sfix41_En28
                                          .xf_im(xf_im),  // sfix41_En28
                                          .xf_vld(xf_vld),
                                          .dinXTwdlf_re(dinXTwdlf_re),  // sfix41_En28
                                          .dinXTwdlf_im(dinXTwdlf_im),  // sfix41_En28
                                          .dinxTwdlf_vld(dinxTwdlf_vld),
                                          .btf1_re(btf1_re),  // sfix41_En28
                                          .btf1_im(btf1_im),  // sfix41_En28
                                          .btf2_re(btf2_re),  // sfix41_En28
                                          .btf2_im(btf2_im),  // sfix41_En28
                                          .btf_vld(btf_vld),
                                          .softReset(softReset),
                                          .wrData_re(wrData_re),  // sfix41_En28
                                          .wrData_im(wrData_im),  // sfix41_En28
                                          .wrAddr(wrAddr),  // ufix5
                                          .wrEnb(wrEnb),
                                          .dout_1_1_re(dout_1_1_re),  // sfix41_En28
                                          .dout_1_1_im(dout_1_1_im),  // sfix41_En28
                                          .dout_1_1_vld(dout_1_1_vld)
                                          );

  assign dinXTwdl_1_1_vld = dinXTwdl_1_1_vld_1;

endmodule  // RADIX22FFT_SDF1_1_block
