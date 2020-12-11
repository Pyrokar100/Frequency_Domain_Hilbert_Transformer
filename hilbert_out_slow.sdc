# ####################################################################

#  Created by Encounter(R) RTL Compiler RC14.27 - v14.20-s064_1 on Tue Dec 08 20:54:52 +0300 2020

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design FDHT

create_clock -name "clk" -add -period 12.987 -waveform {0.0 6.4935} [get_ports clk]
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
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports reset_x]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports clk_enable]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[14]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[13]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[12]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[11]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[10]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[9]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[8]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {in1[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[14]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[13]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 6.4935 [get_ports {out1[0]}]
set_wire_load_selection_group "4_metls_routing" -library "D_CELLS_HD_LP5MOS_slow_1_62V_175C"
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCNHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCNHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCNHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCNHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCPHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCPHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCPHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LGCPHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCNHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCNHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCNHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCNHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCPHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCPHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCPHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSGCPHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCNHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCNHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCNHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCNHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCPHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCPHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCPHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/LSOGCPHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/STEHDX0]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/STEHDX1]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/STEHDX2]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/STEHDX4]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/SIGNALHOLDHD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/MPROBEBUHDX8]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/MPROBEHD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED1HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED3HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FEED25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/DECAP3HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/DECAP5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/DECAP7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/DECAP10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/DECAP15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/DECAP25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE3HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE4HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE6HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE8HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE9HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE11HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE12HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE13HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE14HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE16HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE17HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE18HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE19HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE20HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE21HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE22HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE23HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE24HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE26HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE27HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE28HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE29HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE30HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE31HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNE32HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED5HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED6HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED7HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED8HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED9HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED10HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED11HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED12HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED13HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED14HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED15HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED16HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED17HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED18HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED19HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED20HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED21HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED22HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED23HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED24HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED25HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED26HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED27HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED28HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED29HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED30HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED31HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/FCNED32HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/ANTENNACELLN2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/ANTENNACELLNP2HD]
set_dont_use [get_lib_cells D_CELLS_HD_LP5MOS_slow_1_62V_175C/ANTENNACELLP2HD]
set_clock_uncertainty -setup 1.299 [get_clocks clk]
set_clock_uncertainty -hold 1.299 [get_clocks clk]
