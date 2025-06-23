#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Feb 27 20:29:01 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.18-s099_1 (64bit) 07/18/2023 13:03 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.18-s099_1 NR230707-1955/21_18-UB (database version 18.20.605) {superthreading v2.17}
#@(#)CDS: AAE 21.18-s017 (64bit) 07/18/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.18-s022_1 () Jul 11 2023 23:10:24 ( )
#@(#)CDS: SYNTECH 21.18-s010_1 () Jul  5 2023 06:32:03 ( )
#@(#)CDS: CPE v21.18-s053
#@(#)CDS: IQuantus/TQuantus 21.1.1-s966 (64bit) Wed Mar 8 10:22:20 PST 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /run/media/user1/c2s/S5_training_batch2/Vinayak3/07_Placement/Placement/fifo_top_placed.enc.dat fifo_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
set init_top_cell FIFO
set_global report_timing_format {instance arc net cell slew delay arrival required}
set_analysis_view -setup {worst} -hold {best}
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -drouteUseMultiCutViaEffort high
set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}
set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}
setRouteMode -earlyGlobalMaxRouteLayer 4
create_route_type -name leaf_rule -top_preferred_layer 2 -bottom_preferred_layer 1 -preferred_routing_layer_effort high
create_route_type -name trunk_rule -top_preferred_layer 3 -bottom_preferred_layer 2 -preferred_routing_layer_effort high
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type trunk_rule
set_ccopt_property primary_delay_corner max_delay
set_ccopt_property route_type_autotrim false
create_ccopt_clock_tree_spec -file ./Clock_Tree_Synthesis/FIFO_ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin rd_clk_pad true
set_ccopt_property cts_is_sdc_clock_root -pin wr_clk_pad true
create_ccopt_clock_tree -name write_clk -source wr_clk_pad -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -early -clock_tree write_clk 1.875
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -late -clock_tree write_clk 3.000
set_ccopt_property source_latency -clock_tree write_clk 1.250
set_ccopt_property clock_period -pin wr_clk_pad 15
create_ccopt_clock_tree -name read_clk -source rd_clk_pad -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -early -clock_tree read_clk 3.750
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -late -clock_tree read_clk 6.000
set_ccopt_property source_latency -clock_tree read_clk 1.250
set_ccopt_property clock_period -pin rd_clk_pad 30
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name read_clk/all -sources rd_clk_pad -auto_sinks
set_ccopt_property include_source_latency -skew_group read_clk/all true
set_ccopt_property extracted_from_clock_name -skew_group read_clk/all read_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group read_clk/all all
set_ccopt_property extracted_from_delay_corners -skew_group read_clk/all {max_delay min_delay}
create_ccopt_skew_group -name write_clk/all -sources wr_clk_pad -auto_sinks
set_ccopt_property include_source_latency -skew_group write_clk/all true
set_ccopt_property extracted_from_clock_name -skew_group write_clk/all write_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group write_clk/all all
set_ccopt_property extracted_from_delay_corners -skew_group write_clk/all {max_delay min_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ctd_win -id before_ccopt
set_ccopt_property -delay_corner max_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type leaf target_max_trans 2
set_ccopt_property -skew_group write_clk/all -delay_corner min_delay target_skew 0.5
set_ccopt_property -skew_group read_clk/all -delay_corner min_delay target_skew 0.5
set_ccopt_property -delay_corner min_delay target_skew 0.5
set_ccopt_property source_driver pc3d01/CIN -clock_tree write_clk
set_ccopt_property source_driver pc3d01/CIN -clock_tree read_clk
set_ccopt_property balance_mode cluster
ccopt_design -cts
ctd_win -id cluster_mode
set_ccopt_property balance_mode trial
ccopt_design -cts
ctd_win -id trial_mode
set_ccopt_property balance_mode full
ccopt_design -cts
ctd_win -id full_mode
report_ccopt_clock_trees -summary -file ./Clock_Tree_Synthesis/FIFO_clock_trees.rpt
report_ccopt_skew_groups -summary -file ./Clock_Tree_Synthesis/FIFO_skew_group.rpt
reportCongestion -overflow -hotSpot > ./Clock_Tree_Synthesis/FIFO_congestion.rpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 500 -prefix fifo_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 500 -prefix fifo_top_postCTS -outDir timingReports
saveDesign fifo_top_cts.enc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 500 -prefix fifo_top_postCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postCTS -hold
