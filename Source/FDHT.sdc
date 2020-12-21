# @file       <FDHT.sdc>
# @brief      Synthesis timing Constraints
# @authors    
#

set FCLK   77;                  #desired Fclk
set UNCERT 10;                      #desired % from Fclk for clock uncertainty

############GROUP PATH and PORTS for STA################
group_path -name REGIN  -through [all_inputs]
group_path -name REGOUT -to      [all_outputs]
group_path -name INOUT  -through [all_inputs] -to [all_outputs]

set INPUTPORTS_CLK  [remove_from_collection [all_inputs]  [get_ports {clk reset}]]; #to exclude from input_delay setting
set OUTPUTPORTS_CLK [all_outputs]


################CLOCK SIGNAL SECTION####################

###CLOCK SIGNAL###
set PERIOD_CLK [expr (1000.0/$FCLK)] ;# 1 ns clock period -> 1000 MHz max
set CLOCK_UNCERTAINTY_CLK [expr ($UNCERT/100.0) * $PERIOD_CLK]

### EXTERNAL DELAYS###
set INPUT_DELAY_CLK        [expr $PERIOD_CLK/2.0]; #50% from Tclk
set OUTPUT_DELAY_CLK       [expr $PERIOD_CLK/2.0]; #50% from Tclk
#set FEEDTHROUGH_DELAY_CLK  [expr $PERIOD_CLK/3.0]; #33% from Tclk


create_clock [get_ports clk] -name clk -period $PERIOD_CLK
set_clock_uncertainty $CLOCK_UNCERTAINTY_CLK [get_clocks {clk}]

set_input_delay  -clock "clk"       -max $INPUT_DELAY_CLK  $INPUTPORTS_CLK
set_output_delay -clock "clk"       -max $OUTPUT_DELAY_CLK $OUTPUTPORTS_CLK

