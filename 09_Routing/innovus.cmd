#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Mar  4 18:33:25 2025                
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
restoreDesign /run/media/user1/c2s/S5_training_batch2/VINAYAK/08_Clock_Tree_Synthesis/fifo_top_cts.enc.dat fifo_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName ADIODE
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 4
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
zoomBox -221.87600 543.15400 2161.71600 2676.97800
zoomBox -1242.94000 333.90300 2638.34200 3808.47900
fit
zoomBox 422.30500 49.82400 1886.12900 1360.25900
zoomBox 830.78200 113.39500 1729.75400 918.16700
zoomBox 1081.63800 152.43700 1633.72000 646.66800
zoomBox 894.00600 125.27900 1658.13400 809.33700
zoomBox 469.15700 63.78600 1713.41400 1177.66200
zoomBox 46.28200 2.58100 1768.43700 1544.27700
zoomBox -539.01200 -82.13300 1844.59400 2051.70300
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 500 -prefix fifo_top_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 500 -prefix fifo_top_postRoute -outDir timingReports
getNanoRouteMode -quiet -routeWithTimingDriven
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 500 -prefix fifo_top_postRoute -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 500 -prefix fifo_top_postRoute -outDir timingReports
saveDesign fifo_top_routing_filler.enc
saveNetlist -includePowerGround ./Routing/fifo_postRoute_withPG.v
saveNetlist ./Routing/fifo_postRoute_withoutPG.v
write_sdf -version 2.1 -edges noegde -recrem split  -setuphold merge_when_paired ./Routing/fifo_postRoute_with_pad.sdf
write_sdf -version 2.1 -edges noegde -recrem split -setuphold merge_when_paired ./Routing/fifo_postRoute_with_pad.sdf
write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired ./Routing/fifo_postRoute_with_pad.sdf
rcOut -spef ./Routing/fifo_postRoute.spef
