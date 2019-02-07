## Generated SDC file "CNN.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

## DATE    "Sun Nov 26 15:10:44 2017"

##
## DEVICE  "EP4CE15F23C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 8.000 -waveform { 0.000 4.000 } [get_ports *]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin1[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin2[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin3[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {xin4[31]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin1[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin2[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin3[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {yin4[31]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

