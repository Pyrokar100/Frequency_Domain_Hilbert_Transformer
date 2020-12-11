## Setup technology files
include ../Source/X-FAB_typ.tcl
## Setup variables
set DESIGN FDHT
set PARAMS {}
## Read in Verilog HDL files
# Delay modules
#read_hdl -v2001 ../Source/Delay/Delay.v
#read_hdl -v2001 ../Source/Delay/MultiDelay.v
# Cancellation block module
#read_hdl -v2001 ../Source/Filter/Cancellation/Cancellation_block.v
# Clock modules
#read_hdl -v2001 ../Source/Clock/Clock_divider_impulse.v
# Common modules
#read_hdl -v2001 ../Source/Common/Subtraction.v
# CIC filter
#read_hdl -v2001 ../Source/Filter/CIC/MatLab/CIC_synth.v
# IIR filter
#read_hdl -v2001 ../Source/Filter/IIR/Synthesized/IIR_synth.v
# Top module
read_hdl -v2001 ../Source/FDHT/Complex4Multiply.v
read_hdl -v2001 ../Source/FDHT/Complex4Multiply_block.v
read_hdl -v2001 ../Source/FDHT/Complex4Multiply_block1.v
read_hdl -v2001 ../Source/FDHT/Complex4Multiply_block2.v
read_hdl -v2001 ../Source/FDHT/DFT.v
read_hdl -v2001 ../Source/FDHT/DFT_2.v
read_hdl -v2001 ../Source/FDHT/FDHT.v
read_hdl -v2001 ../Source/FDHT/generating_analytical_spectrum.v
read_hdl -v2001 ../Source/FDHT/memory.v
read_hdl -v2001 ../Source/FDHT/parallel_serial1.v
read_hdl -v2001 ../Source/FDHT/RADIX2FFT_bitNatural.v
read_hdl -v2001 ../Source/FDHT/RADIX2FFT_bitNatural_block.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_1.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_1_block.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_2.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_2_block.v

read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_3.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_3_block.v

read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_4.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_4_block.v

read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_5.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_5_block.v

read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_6.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_CTRL1_6_block.v


read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF1_1.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF1_1_block.v


read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF1_3.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF1_3_block.v


read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF1_5.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF1_5_block.v


read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF2_2.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF2_2_block.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF2_4.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF2_4_block.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF2_6.v
read_hdl -v2001 ../Source/FDHT/RADIX22FFT_SDF2_6_block.v


read_hdl -v2001 ../Source/FDHT/SDFCommutator1.v
read_hdl -v2001 ../Source/FDHT/SDFCommutator1_block.v


read_hdl -v2001 ../Source/FDHT/SDFCommutator2.v
read_hdl -v2001 ../Source/FDHT/SDFCommutator2_block.v

read_hdl -v2001 ../Source/FDHT/SDFCommutator3.v
read_hdl -v2001 ../Source/FDHT/SDFCommutator3_block.v

read_hdl -v2001 ../Source/FDHT/SDFCommutator4.v
read_hdl -v2001 ../Source/FDHT/SDFCommutator4_block.v


read_hdl -v2001 ../Source/FDHT/SDFCommutator5.v
read_hdl -v2001 ../Source/FDHT/SDFCommutator5_block.v


read_hdl -v2001 ../Source/FDHT/SDFCommutator6.v
read_hdl -v2001 ../Source/FDHT/SDFCommutator6_block.v

read_hdl -v2001 ../Source/FDHT/SimpleDualPortRAM_generic.v
read_hdl -v2001 ../Source/FDHT/SinglePortRAM_generic.v
read_hdl -v2001 ../Source/FDHT/swapping.v
read_hdl -v2001 ../Source/FDHT/swapping2.v
read_hdl -v2001 ../Source/FDHT/taking_imaginary_part.v

read_hdl -v2001 ../Source/FDHT/TWDLROM_3_1.v
read_hdl -v2001 ../Source/FDHT/TWDLROM_3_1_block.v
read_hdl -v2001 ../Source/FDHT/TWDLROM_5_1.v
read_hdl -v2001 ../Source/FDHT/TWDLROM_5_1_block.v

## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
## Setup design constraints
read_sdc ../Source/FDHT.sdc
## Synthesize our schematic (create a technology-dependent schematic)
#synthesize -to_generic
synthesize -to_mapped
synthesize -incremental
## Write out area and timing reports
report area > ../Reports/Top_synth_area_report_DFHT_fast
report timing > ../Reports/Top_synth_timing_report_DFHT_fast
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Source/FDHT_synth_fast.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Source/hilbert_out_fast.sdc
gui_show

