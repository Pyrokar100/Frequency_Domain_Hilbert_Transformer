# ####################################################################

#  Created by Encounter(R) RTL Compiler RC14.27 - v14.20-s064_1 on Wed Dec 09 17:27:11 +0300 2020

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design FDHT

create_clock -name "clk" -add -period 200.0 -waveform {0.0 100.0} [get_ports clk]
group_path -name REGIN -through [list \
  [get_ports clk]  \
  [get_ports reset_x]  \
  [get_ports clk_enable]  \
  [get_ports {in1[14]}]  \
  [get_ports {in1[13]}]  \
  [get_ports {in1[12]}]  \
  [get_ports {in1[11]}]  \
  [get_ports {in1[10]}]  \
  [get_ports {in1[9]}]  \
  [get_ports {in1[8]}]  \
  [get_ports {in1[7]}]  \
  [get_ports {in1[6]}]  \
  [get_ports {in1[5]}]  \
  [get_ports {in1[4]}]  \
  [get_ports {in1[3]}]  \
  [get_ports {in1[2]}]  \
  [get_ports {in1[1]}]  \
  [get_ports {in1[0]}] ]
group_path -name REGOUT -to [list \
  [get_ports {out1[14]}]  \
  [get_ports {out1[13]}]  \
  [get_ports {out1[12]}]  \
  [get_ports {out1[11]}]  \
  [get_ports {out1[10]}]  \
  [get_ports {out1[9]}]  \
  [get_ports {out1[8]}]  \
  [get_ports {out1[7]}]  \
  [get_ports {out1[6]}]  \
  [get_ports {out1[5]}]  \
  [get_ports {out1[4]}]  \
  [get_ports {out1[3]}]  \
  [get_ports {out1[2]}]  \
  [get_ports {out1[1]}]  \
  [get_ports {out1[0]}] ]
group_path -name INOUT -through [list \
  [get_ports clk]  \
  [get_ports reset_x]  \
  [get_ports clk_enable]  \
  [get_ports {in1[14]}]  \
  [get_ports {in1[13]}]  \
  [get_ports {in1[12]}]  \
  [get_ports {in1[11]}]  \
  [get_ports {in1[10]}]  \
  [get_ports {in1[9]}]  \
  [get_ports {in1[8]}]  \
  [get_ports {in1[7]}]  \
  [get_ports {in1[6]}]  \
  [get_ports {in1[5]}]  \
  [get_ports {in1[4]}]  \
  [get_ports {in1[3]}]  \
  [get_ports {in1[2]}]  \
  [get_ports {in1[1]}]  \
  [get_ports {in1[0]}] ] -to [list \
  [get_ports {out1[14]}]  \
  [get_ports {out1[13]}]  \
  [get_ports {out1[12]}]  \
  [get_ports {out1[11]}]  \
  [get_ports {out1[10]}]  \
  [get_ports {out1[9]}]  \
  [get_ports {out1[8]}]  \
  [get_ports {out1[7]}]  \
  [get_ports {out1[6]}]  \
  [get_ports {out1[5]}]  \
  [get_ports {out1[4]}]  \
  [get_ports {out1[3]}]  \
  [get_ports {out1[2]}]  \
  [get_ports {out1[1]}]  \
  [get_ports {out1[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports reset_x]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports clk_enable]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[14]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[13]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[12]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[11]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[10]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[9]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[8]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {in1[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[14]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[13]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 66.66669999999999 [get_ports {out1[0]}]
set_wire_load_selection_group "4_metls_routing" -library "D_CELLS_HD_LP5MOS_typ_1_80V_25C"
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCNHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCNHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCNHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCNHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCPHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCPHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCPHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LGCPHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCNHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCNHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCNHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCNHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCPHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCPHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCPHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSGCPHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCNHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCNHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCNHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCNHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCPHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCPHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCPHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/LSOGCPHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/STEHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/STEHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/STEHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/STEHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/SIGNALHOLDHD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/MPROBEBUHDX8]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/MPROBEHD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED1HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED3HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FEED25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/DECAP3HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/DECAP5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/DECAP7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/DECAP10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/DECAP15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/DECAP25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE3HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE4HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE6HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE8HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE9HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE11HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE12HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE13HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE14HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE16HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE17HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE18HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE19HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE20HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE21HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE22HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE23HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE24HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE26HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE27HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE28HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE29HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE30HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE31HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNE32HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED6HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED8HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED9HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED11HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED12HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED13HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED14HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED16HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED17HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED18HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED19HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED20HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED21HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED22HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED23HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED24HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED26HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED27HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED28HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED29HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED30HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED31HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/FCNED32HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/ANTENNACELLN2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/ANTENNACELLNP2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_typ_1_80V_25C/ANTENNACELLP2HD]
set_clock_uncertainty -setup 0.2 [get_clocks clk]
set_clock_uncertainty -hold 0.2 [get_clocks clk]
