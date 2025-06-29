#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Mar  5 13:50:14 2025                
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
restoreDesign /run/media/user1/c2s/S5_training_batch2/VINAYAK/09_Routing/fifo_top_filler_new.enc.dat fifo_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
zoomBox -367.33700 341.15200 2286.47700 1651.58700
zoomBox 117.13800 581.97700 1746.91400 1386.74900
zoomBox 414.66600 729.87400 1415.55500 1224.10600
zoomBox 678.08300 867.34200 1122.18600 1086.63700
zoomBox 795.13400 928.67800 992.18600 1025.98100
zoomBox 810.05000 941.61300 952.42100 1011.91500
zoomBox 820.82500 950.95900 923.68800 1001.75200
zoomBox 837.17600 962.71800 890.87200 989.23300
zoomBox 848.32400 970.67600 868.57800 980.67700
zoomBox 844.05800 967.63800 877.03900 983.92400
zoomBox 837.11100 962.69300 890.81600 989.21200
zoomBox 825.80900 954.64800 913.26000 997.83100
zoomBox 798.96500 934.87500 966.50100 1017.60300
zoomBox 747.34300 896.77400 1068.29300 1055.25700
zoomBox 675.02100 846.81400 1197.63700 1104.87800
zoomBox 555.22000 766.44300 1406.21300 1186.65700
zoomBox 438.45400 684.26900 1616.30000 1265.88100
zoomBox 51.66600 408.31100 2308.05200 1522.49900
zoomBox -96.07600 309.45100 2558.49700 1620.26100
zoomBox -269.89000 193.14500 2853.13900 1735.27500
zoomBox -1293.47200 -672.65900 4689.27300 2281.57900
zoomBox -711.82500 -263.90400 3610.70800 1870.53300
zoomBox -127.46500 146.75900 2527.11100 1457.57000
zoomBox 317.07600 459.16200 1702.78300 1143.41500
zoomBox 548.67200 622.78400 1272.02200 979.96900
zoomBox 646.45900 692.27500 1090.68800 911.63200
zoomBox 716.89600 748.06800 948.78700 862.57400
zoomBox 756.64400 778.49100 877.69500 838.26500
zoomBox 775.15500 791.80700 849.49600 828.51600
zoomBox 789.59000 801.92700 828.39700 821.09000
zoomBox 773.83000 789.89200 848.17600 826.60400
zoomBox 703.95200 736.53300 935.87300 851.05400
zoomBox 575.00900 638.22500 1097.70300 896.32800
zoomBox -44.79900 177.21900 1873.42500 1124.42500
zoomBox -1850.41500 -1159.85900 4133.24700 1794.83200
reset_parasitics
extractRC
rcOut -spef ./Signoff/fifo_top_signoff.spef -rc_corner rc_best
verifyConnectivity -type all -error 1000 -warning 50
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report fifo_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveNetlist -includePowerGround ./Signoff/fifo_signoff_withPG.v
saveNetlist ./Signoff/fifo_signoff_withoutPG.v
zoomBox -1409.68700 -1050.29600 3676.42500 1461.19100
zoomBox -1833.14500 -1317.70400 4150.51700 1636.98700
fit
fit
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -spef -floorplan -place -outdir checkDesign
saveDesign Signoff/fifo_top_signoff.enc
streamOut fifo.gds -mapFile ../../../cadence/install/SCLPDK/scl_pdk/stdlib/fs120/tech_data/lef/gds2_fe_4l.map -libName DesignLib -units 1000 -mode ALL
