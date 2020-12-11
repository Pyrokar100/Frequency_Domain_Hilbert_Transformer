// -------------------------------------------------------------
// 
// File Name: C:\Users\Carlos Cajas\Desktop\DSP\nuevo_chale\FDHT_N\TWDLROM_3_1_block.v
// Created: 2020-12-08 16:13:17
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: TWDLROM_3_1_block
// Source Path: FDHT_N/FDHT/DFT-2/TWDLROM_3_1
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module TWDLROM_3_1_block
          (clk,
           reset_x,
           enb,
           dout_2_1_vld,
           softReset,
           twdl_3_1_re,
           twdl_3_1_im,
           twdl_3_1_vld);


  input   clk;
  input   reset_x;
  input   enb;
  input   dout_2_1_vld;
  input   softReset;
  output  signed [40:0] twdl_3_1_re;  // sfix41_En39
  output  signed [40:0] twdl_3_1_im;  // sfix41_En39
  output  twdl_3_1_vld;

  reg [3:0] Radix22TwdlMapping_cnt;  // ufix4
  reg [1:0] Radix22TwdlMapping_phase;  // ufix2
  reg [2:0] Radix22TwdlMapping_octantReg1;  // ufix3
  reg [5:0] Radix22TwdlMapping_twdlAddr_raw;  // ufix6
  reg [2:0] Radix22TwdlMapping_twdlAddrMap;  // ufix3
  reg  Radix22TwdlMapping_twdl45Reg;
  reg  Radix22TwdlMapping_dvldReg1;
  reg  Radix22TwdlMapping_dvldReg2;
  reg [3:0] Radix22TwdlMapping_cnt_next;  // ufix4
  reg [1:0] Radix22TwdlMapping_phase_next;  // ufix2
  reg [2:0] Radix22TwdlMapping_octantReg1_next;  // ufix3
  reg [5:0] Radix22TwdlMapping_twdlAddr_raw_next;  // ufix6
  reg [2:0] Radix22TwdlMapping_twdlAddrMap_next;  // ufix3
  reg  Radix22TwdlMapping_twdl45Reg_next;
  reg  Radix22TwdlMapping_dvldReg1_next;
  reg  Radix22TwdlMapping_dvldReg2_next;
  reg [2:0] twdlAddr;  // ufix3
  reg  twdlAddrVld;
  reg [2:0] twdlOctant;  // ufix3
  reg  twdl45;
  wire signed [40:0] Twiddle_re_table_data [0:7];  // sfix41_En39 [8]
  wire signed [40:0] twiddleS_re;  // sfix41_En39
  reg signed [40:0] twiddleReg_re;  // sfix41_En39
  wire signed [40:0] Twiddle_im_table_data [0:7];  // sfix41_En39 [8]
  wire signed [40:0] twiddleS_im;  // sfix41_En39
  reg signed [40:0] twiddleReg_im;  // sfix41_En39
  reg [2:0] twdlOctantReg;  // ufix3
  reg  twdl45Reg;
  reg signed [40:0] twdl_3_1_re_1;  // sfix41_En39
  reg signed [40:0] twdl_3_1_im_1;  // sfix41_En39
  reg  twdl_3_1_vld_1;
  reg [2:0] Radix22TwdlMapping_octant;  // ufix3
  reg [5:0] Radix22TwdlMapping_cnt_cast;  // ufix6
  reg signed [13:0] Radix22TwdlMapping_sub_cast;  // sfix14_En3
  reg signed [13:0] Radix22TwdlMapping_sub_temp;  // sfix14_En3
  reg signed [7:0] Radix22TwdlMapping_sub_temp_0;  // sfix8
  reg signed [7:0] Radix22TwdlMapping_sub_temp_1;  // sfix8
  reg signed [13:0] Radix22TwdlMapping_sub_cast_0;  // sfix14_En3
  reg signed [13:0] Radix22TwdlMapping_sub_temp_2;  // sfix14_En3
  reg signed [13:0] Radix22TwdlMapping_sub_cast_1;  // sfix14_En3
  reg signed [13:0] Radix22TwdlMapping_sub_temp_3;  // sfix14_En3
  reg [5:0] Radix22TwdlMapping_t_0_0;  // ufix6
  reg signed [7:0] Radix22TwdlMapping_t_1;  // sfix8
  reg signed [7:0] Radix22TwdlMapping_t_2_0;  // sfix8
  reg signed [40:0] Radix22TwdlOctCorr_twdlIn_re;  // sfix41_En39
  reg signed [40:0] Radix22TwdlOctCorr_twdlIn_im;  // sfix41_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_0;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_1;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_2;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_3;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_4;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_5;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_6;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_7;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_8;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_9;  // sfix42_En39
  reg signed [41:0] Radix22TwdlOctCorr_cast_10;  // sfix42_En39


  // Radix22TwdlMapping
  always @(posedge clk)
    begin : Radix22TwdlMapping_process
      if (reset_x == 1'b1) begin
        Radix22TwdlMapping_octantReg1 <= 3'b000;
        Radix22TwdlMapping_twdlAddr_raw <= 6'b000000;
        Radix22TwdlMapping_twdlAddrMap <= 3'b000;
        Radix22TwdlMapping_twdl45Reg <= 1'b0;
        Radix22TwdlMapping_dvldReg1 <= 1'b0;
        Radix22TwdlMapping_dvldReg2 <= 1'b0;
        Radix22TwdlMapping_cnt <= 4'b0000;
        Radix22TwdlMapping_phase <= 2'b00;
      end
      else begin
        if (enb) begin
          Radix22TwdlMapping_cnt <= Radix22TwdlMapping_cnt_next;
          Radix22TwdlMapping_phase <= Radix22TwdlMapping_phase_next;
          Radix22TwdlMapping_octantReg1 <= Radix22TwdlMapping_octantReg1_next;
          Radix22TwdlMapping_twdlAddr_raw <= Radix22TwdlMapping_twdlAddr_raw_next;
          Radix22TwdlMapping_twdlAddrMap <= Radix22TwdlMapping_twdlAddrMap_next;
          Radix22TwdlMapping_twdl45Reg <= Radix22TwdlMapping_twdl45Reg_next;
          Radix22TwdlMapping_dvldReg1 <= Radix22TwdlMapping_dvldReg1_next;
          Radix22TwdlMapping_dvldReg2 <= Radix22TwdlMapping_dvldReg2_next;
        end
      end
    end

  always @(Radix22TwdlMapping_cnt, Radix22TwdlMapping_phase,
       Radix22TwdlMapping_octantReg1, Radix22TwdlMapping_twdlAddr_raw,
       Radix22TwdlMapping_twdlAddrMap, Radix22TwdlMapping_twdl45Reg,
       Radix22TwdlMapping_dvldReg1, Radix22TwdlMapping_dvldReg2, dout_2_1_vld) begin
    Radix22TwdlMapping_cnt_next = Radix22TwdlMapping_cnt;
    Radix22TwdlMapping_phase_next = Radix22TwdlMapping_phase;
    Radix22TwdlMapping_twdlAddr_raw_next = Radix22TwdlMapping_twdlAddr_raw;
    Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_twdlAddrMap;
    Radix22TwdlMapping_twdl45Reg_next = Radix22TwdlMapping_twdl45Reg;
    Radix22TwdlMapping_dvldReg2_next = Radix22TwdlMapping_dvldReg1;
    Radix22TwdlMapping_dvldReg1_next = dout_2_1_vld;
    case ( Radix22TwdlMapping_twdlAddr_raw)
      6'b001000 :
        begin
          Radix22TwdlMapping_octant = 3'b000;
          Radix22TwdlMapping_twdl45Reg_next = 1'b1;
        end
      6'b010000 :
        begin
          Radix22TwdlMapping_octant = 3'b001;
          Radix22TwdlMapping_twdl45Reg_next = 1'b0;
        end
      6'b011000 :
        begin
          Radix22TwdlMapping_octant = 3'b010;
          Radix22TwdlMapping_twdl45Reg_next = 1'b1;
        end
      6'b100000 :
        begin
          Radix22TwdlMapping_octant = 3'b011;
          Radix22TwdlMapping_twdl45Reg_next = 1'b0;
        end
      6'b101000 :
        begin
          Radix22TwdlMapping_octant = 3'b100;
          Radix22TwdlMapping_twdl45Reg_next = 1'b1;
        end
      default :
        begin
          Radix22TwdlMapping_octant = Radix22TwdlMapping_twdlAddr_raw[5:3];
          Radix22TwdlMapping_twdl45Reg_next = 1'b0;
        end
    endcase
    Radix22TwdlMapping_octantReg1_next = Radix22TwdlMapping_octant;
    case ( Radix22TwdlMapping_octant)
      3'b000 :
        begin
          Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_twdlAddr_raw[2:0];
        end
      3'b001 :
        begin
          Radix22TwdlMapping_t_1 = {2'b0, Radix22TwdlMapping_twdlAddr_raw};
          Radix22TwdlMapping_sub_temp_0 = 8'sb00010000 - Radix22TwdlMapping_t_1;
          Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_sub_temp_0[2:0];
        end
      3'b010 :
        begin
          Radix22TwdlMapping_t_2_0 = {2'b0, Radix22TwdlMapping_twdlAddr_raw};
          Radix22TwdlMapping_sub_temp_1 = Radix22TwdlMapping_t_2_0 - 8'sb00010000;
          Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_sub_temp_1[2:0];
        end
      3'b011 :
        begin
          Radix22TwdlMapping_sub_cast_0 = {5'b0, {Radix22TwdlMapping_twdlAddr_raw, 3'b000}};
          Radix22TwdlMapping_sub_temp_2 = 14'sb00000100000000 - Radix22TwdlMapping_sub_cast_0;
          Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_sub_temp_2[5:3];
        end
      3'b100 :
        begin
          Radix22TwdlMapping_sub_cast_1 = {5'b0, {Radix22TwdlMapping_twdlAddr_raw, 3'b000}};
          Radix22TwdlMapping_sub_temp_3 = Radix22TwdlMapping_sub_cast_1 - 14'sb00000100000000;
          Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_sub_temp_3[5:3];
        end
      default :
        begin
          Radix22TwdlMapping_sub_cast = {5'b0, {Radix22TwdlMapping_twdlAddr_raw, 3'b000}};
          Radix22TwdlMapping_sub_temp = 14'sb00000110000000 - Radix22TwdlMapping_sub_cast;
          Radix22TwdlMapping_twdlAddrMap_next = Radix22TwdlMapping_sub_temp[5:3];
        end
    endcase
    if (Radix22TwdlMapping_phase == 2'b00) begin
      Radix22TwdlMapping_twdlAddr_raw_next = 6'b000000;
    end
    else if (Radix22TwdlMapping_phase == 2'b01) begin
      Radix22TwdlMapping_t_0_0 = {2'b0, Radix22TwdlMapping_cnt};
      Radix22TwdlMapping_twdlAddr_raw_next = Radix22TwdlMapping_t_0_0 <<< 8'd1;
    end
    else if (Radix22TwdlMapping_phase == 2'b10) begin
      Radix22TwdlMapping_twdlAddr_raw_next = {2'b0, Radix22TwdlMapping_cnt};
    end
    else begin
      Radix22TwdlMapping_cnt_cast = {2'b0, Radix22TwdlMapping_cnt};
      Radix22TwdlMapping_twdlAddr_raw_next = (Radix22TwdlMapping_cnt_cast <<< 8'd1) + Radix22TwdlMapping_cnt_cast;
    end
    if (dout_2_1_vld && (Radix22TwdlMapping_cnt > 4'b1110)) begin
      Radix22TwdlMapping_phase_next = Radix22TwdlMapping_phase + 2'b01;
    end
    if (dout_2_1_vld) begin
      Radix22TwdlMapping_cnt_next = Radix22TwdlMapping_cnt + 4'b0001;
    end
    twdlAddr = Radix22TwdlMapping_twdlAddrMap;
    twdlAddrVld = Radix22TwdlMapping_dvldReg2;
    twdlOctant = Radix22TwdlMapping_octantReg1;
    twdl45 = Radix22TwdlMapping_twdl45Reg;
  end



  // Twiddle ROM1
  assign Twiddle_re_table_data[0] = 41'sh08000000000;
  assign Twiddle_re_table_data[1] = 41'sh07F62368F45;
  assign Twiddle_re_table_data[2] = 41'sh07D8A5F3FDD;
  assign Twiddle_re_table_data[3] = 41'sh07A7D055B19;
  assign Twiddle_re_table_data[4] = 41'sh07641AF3CCA;
  assign Twiddle_re_table_data[5] = 41'sh070E2CBC603;
  assign Twiddle_re_table_data[6] = 41'sh06A6D98A43B;
  assign Twiddle_re_table_data[7] = 41'sh062F201AC54;
  assign twiddleS_re = Twiddle_re_table_data[twdlAddr];



  always @(posedge clk)
    begin : TWIDDLEROM_RE_process
      if (reset_x == 1'b1) begin
        twiddleReg_re <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          twiddleReg_re <= twiddleS_re;
        end
      end
    end



  // Twiddle ROM2
  assign Twiddle_im_table_data[0] = 41'sh00000000000;
  assign Twiddle_im_table_data[1] = 41'sh1F3742CA1EB;
  assign Twiddle_im_table_data[2] = 41'sh1E70747C396;
  assign Twiddle_im_table_data[3] = 41'sh1DAD7F3A255;
  assign Twiddle_im_table_data[4] = 41'sh1CF043AB2A3;
  assign Twiddle_im_table_data[5] = 41'sh1C3A9458FF2;
  assign Twiddle_im_table_data[6] = 41'sh1B8E3131946;
  assign Twiddle_im_table_data[7] = 41'sh1AECC336BDC;
  assign twiddleS_im = Twiddle_im_table_data[twdlAddr];



  always @(posedge clk)
    begin : TWIDDLEROM_IM_process
      if (reset_x == 1'b1) begin
        twiddleReg_im <= 41'sh00000000000;
      end
      else begin
        if (enb) begin
          twiddleReg_im <= twiddleS_im;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_process
      if (reset_x == 1'b1) begin
        twdlOctantReg <= 3'b000;
      end
      else begin
        if (enb) begin
          twdlOctantReg <= twdlOctant;
        end
      end
    end



  always @(posedge clk)
    begin : intdelay_1_process
      if (reset_x == 1'b1) begin
        twdl45Reg <= 1'b0;
      end
      else begin
        if (enb) begin
          twdl45Reg <= twdl45;
        end
      end
    end



  // Radix22TwdlOctCorr
  always @(twiddleReg_re, twiddleReg_im, twdlOctantReg, twdl45Reg) begin
    Radix22TwdlOctCorr_twdlIn_re = twiddleReg_re;
    Radix22TwdlOctCorr_twdlIn_im = twiddleReg_im;
    if (twdl45Reg) begin
      case ( twdlOctantReg)
        3'b000 :
          begin
            Radix22TwdlOctCorr_twdlIn_re = 41'sh05A827999FD;
            Radix22TwdlOctCorr_twdlIn_im = 41'sh1A57D866603;
          end
        3'b010 :
          begin
            Radix22TwdlOctCorr_twdlIn_re = 41'sh1A57D866603;
            Radix22TwdlOctCorr_twdlIn_im = 41'sh1A57D866603;
          end
        3'b100 :
          begin
            Radix22TwdlOctCorr_twdlIn_re = 41'sh1A57D866603;
            Radix22TwdlOctCorr_twdlIn_im = 41'sh05A827999FD;
          end
        default :
          begin
            Radix22TwdlOctCorr_twdlIn_re = 41'sh05A827999FD;
            Radix22TwdlOctCorr_twdlIn_im = 41'sh1A57D866603;
          end
      endcase
    end
    else begin
      case ( twdlOctantReg)
        3'b000 :
          begin
          end
        3'b001 :
          begin
            Radix22TwdlOctCorr_cast = {twiddleReg_im[40], twiddleReg_im};
            Radix22TwdlOctCorr_cast_0 =  - (Radix22TwdlOctCorr_cast);
            Radix22TwdlOctCorr_twdlIn_re = Radix22TwdlOctCorr_cast_0[40:0];
            Radix22TwdlOctCorr_cast_5 = {twiddleReg_re[40], twiddleReg_re};
            Radix22TwdlOctCorr_cast_6 =  - (Radix22TwdlOctCorr_cast_5);
            Radix22TwdlOctCorr_twdlIn_im = Radix22TwdlOctCorr_cast_6[40:0];
          end
        3'b010 :
          begin
            Radix22TwdlOctCorr_twdlIn_re = twiddleReg_im;
            Radix22TwdlOctCorr_cast_7 = {twiddleReg_re[40], twiddleReg_re};
            Radix22TwdlOctCorr_cast_8 =  - (Radix22TwdlOctCorr_cast_7);
            Radix22TwdlOctCorr_twdlIn_im = Radix22TwdlOctCorr_cast_8[40:0];
          end
        3'b011 :
          begin
            Radix22TwdlOctCorr_cast_1 = {twiddleReg_re[40], twiddleReg_re};
            Radix22TwdlOctCorr_cast_2 =  - (Radix22TwdlOctCorr_cast_1);
            Radix22TwdlOctCorr_twdlIn_re = Radix22TwdlOctCorr_cast_2[40:0];
            Radix22TwdlOctCorr_twdlIn_im = twiddleReg_im;
          end
        3'b100 :
          begin
            Radix22TwdlOctCorr_cast_3 = {twiddleReg_re[40], twiddleReg_re};
            Radix22TwdlOctCorr_cast_4 =  - (Radix22TwdlOctCorr_cast_3);
            Radix22TwdlOctCorr_twdlIn_re = Radix22TwdlOctCorr_cast_4[40:0];
            Radix22TwdlOctCorr_cast_9 = {twiddleReg_im[40], twiddleReg_im};
            Radix22TwdlOctCorr_cast_10 =  - (Radix22TwdlOctCorr_cast_9);
            Radix22TwdlOctCorr_twdlIn_im = Radix22TwdlOctCorr_cast_10[40:0];
          end
        default :
          begin
            Radix22TwdlOctCorr_twdlIn_re = twiddleReg_im;
            Radix22TwdlOctCorr_twdlIn_im = twiddleReg_re;
          end
      endcase
    end
    twdl_3_1_re_1 = Radix22TwdlOctCorr_twdlIn_re;
    twdl_3_1_im_1 = Radix22TwdlOctCorr_twdlIn_im;
  end



  always @(posedge clk)
    begin : intdelay_2_process
      if (reset_x == 1'b1) begin
        twdl_3_1_vld_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          twdl_3_1_vld_1 <= twdlAddrVld;
        end
      end
    end



  assign twdl_3_1_re = twdl_3_1_re_1;

  assign twdl_3_1_im = twdl_3_1_im_1;

  assign twdl_3_1_vld = twdl_3_1_vld_1;

endmodule  // TWDLROM_3_1_block

