################################################################
set_design_mode -process 180
#################################
## Setup threading and client counts
#################################
#set_multi_cpu_usage -localCpu 8
#
#################################
## Setup some global variables or report setting
#################################
set_table_style -no_frame_fix_width -nosplit
#
#################################
## Read the libraries
#################################
#
read_lib -min {./tsl18fs120_scl_ff.lib \ ./tsl18cio150_min.lib};
read_lib -max {./tsl18fs120_scl_ss.lib \ ./tsl18cio150_max.lib};

# ###############################
# # LEF FILE
# ###############################
 read_lib -lef {./tsl180l4.lef \ ./tsl18fs120_scl.lef \ ./tsl18cio150_4lm.lef};
 
# ################################
# # Read the netlist
# ################################
#
 read_verilog "./fifo_signoff_withPG.v" ;
 
#
# ################################
# # Link the design
# ################################
 set_top_module fifo_top
#
# ################################
# # Check the size of the testcase
# ################################
 set cellCnt [sizeof_collection [get_cells -hier *]]
 puts "Your design has: $cellCnt instances"
 
 #
# ################################
# # Load netlist parasitics
# ################################
# ################################
# # Add constraints
# ################################
 read_sdc ./fifo_signoff.sdc
#
#

 read_spef ./fifo_top_signoff.spef
 
#
# ################################
# # Adjust timer settings
# ################################
 set_analysis_mode -analysisType onChipVariation
 set_analysis_mode -cppr true
 set_delay_cal_mode -siAware true ;
 
# # Turn on SI when true
#
# ################################################################
# #To dump aggressor info in report_delay_calculation -si command
# #################################################################
#
set_si_mode -enable_delay_report true
#
# ##########################################
# #enable the glitch reports to be generated
# ##########################################
 set_si_mode -enable_glitch_report true
 set_si_mode -enable_glitch_propagation true
#
# ###################################
# # Run timing
# ###################################
 update_timing -full
#
# ###################################
# # Run reports
# ###################################
 report_timing
 report_timing -late
 report_timing -early
#
# ##################################
# #sdf generation
# ##################################
#
 write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired -recompute_parallel_arcs fifo_postTiming.sdf
#
# ###################################
 set reportDir reports
 file mkdir $reportDir
 source ./reports.tcl
#
 Puts "All done"
