set init_top_cell fifo_top
set_global report_timing_format {instance arc net cell slew delay arrival required}
##################################################################################
## To read cts configuration file and generate cts optimization specification file.
## create_ccopt_clock_tree_spec: Creates a clock tree network with associated skew groups and other
## clock tree synthesis (CTS) configuration settings such as ignore pins, case analysis, maxTrans,
## and so on based on a multi-mode timing configuration in the common timing engine (CTE).
## one skew group will be created for each SDC clock in each constraint mode.
## ctd_win : Opens a Clock Tree Debugger (CTD) window.

##################################################################################
source ./config.tcl
create_ccopt_clock_tree_spec -file ./Clock_Tree_Synthesis/${init_top_cell}_ccopt.spec
source ./Clock_Tree_Synthesis/${init_top_cell}_ccopt.spec
ctd_win -id before_ccopt
##################################################################################
## set_ccopt_property :
## This command is used to set the values of various CCOpt object properties.
## target_max_trans: Configure the maximum transition target,
##################################################################################
set_ccopt_property -delay_corner max_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type leaf target_max_trans 2
##################################################################################
## target_skew: Configure a skew target for CCOpt-CTS (Ignored in only CCopt)
## source_driver : Specifies the library pin which is assumed to drive this clock tree. By default this is 
## generated from clock tree extraction.
##################################################################################
set_ccopt_property -skew_group write_clk/all -delay_corner min_delay target_skew 0.5
set_ccopt_property -skew_group read_clk/all -delay_corner min_delay target_skew 0.5
set_ccopt_property -delay_corner min_delay target_skew 0.5
set_ccopt_property source_driver pc3d01/CIN -clock_tree write_clk
set_ccopt_property source_driver pc3d01/CIN -clock_tree read_clk

##################################################################################
## ccopt_design :-Performs clock concurrent optimization (CCOpt) on the current loaded design in
## Innovus. CCOpt optimizes both the clock tree and the datapath to meet global timing constraints.
## -cts : Turns off clock concurrent optimization, and performs only clock tree synthesis (CTS)
## using the CCOpt engine. It does not perform any datapath optimization or useful skew.
## Cluster mode : Physically implements the clock tree, but stops before performing any balancing
## or optimization of the clock tree,
## Trial Mode : physically implements the clock tree and uses virtual delays to approximate how
##full CTS will balance clock trees, but does not perform any optimization,
## Full Mode : A full CTS is performed with balance and optimized clock trees.
##################################################################################
set_ccopt_property balance_mode cluster
ccopt_design -cts
ctd_win -id cluster_mode
set_ccopt_property balance_mode trial
ccopt_design -cts
ctd_win -id trial_mode
set_ccopt_property balance_mode full
ccopt_design -cts
ctd_win -id full_mode

##################################################################################
## report_ccopt_clock_trees: Reports a summary of all defined clock trees. This report provides a
## summary of numbers of clock gates at different depths in each clock tree.
## report_ccopt_skew_groups: Displays information about skew and insertion delay in skew groups.
report_ccopt_clock_trees -summary -file ./Clock_Tree_Synthesis/${init_top_cell}_clock_trees.rpt
report_ccopt_skew_groups -summary -file ./Clock_Tree_Synthesis/${init_top_cell}_skew_group.rpt
reportCongestion -overflow -hotSpot > ./Clock_Tree_Synthesis/${init_top_cell}_congestion.rpt
