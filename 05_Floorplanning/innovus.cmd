#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Feb 27 19:44:36 2025                
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
set init_gnd_net {VSS_CORE VSSO_CO}
set init_lef_file {../../../cadence/install/SCLPDK/scl_pdk/stdlib/fs120/tech_data/lef/tsl180l4.lef ../../../cadence/install/SCLPDK/scl_pdk/stdlib/fs120/lef/tsl18fs120_scl.lef ../../../cadence/install/SCLPDK/scl_pdk/iolib/cio150/cds/lef/tsl18cio150_4lm.lef}
set init_design_settop 0
set init_verilog fifo_top_incremental.v
set init_mmmc_file fifo.view
set init_io_file fifo.io
set init_pwr_net {VDD_CORE VDDO_CORE}
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -d 1940 1940 125 125 125 125
uiSetTool select
getIoFlowFlag
fit
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side n
zoomBox -301.79000 643.59800 2352.02600 1954.03400
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side s
zoomBox -704.58400 360.30700 2968.51900 2174.06000
zoomBox -1770.03500 -182.63800 4211.00100 2770.75600
zoomBox -1303.51400 -147.37100 3780.36600 2363.01400
zoomBox -906.97200 -117.39400 3414.32800 2016.43400
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side w
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side e
zoomBox 129.16600 333.40000 2782.98500 1643.83800
zoomBox -504.19900 57.84000 3168.90800 1871.59500
saveDesign Floorplanning/fifo_top_floorplan.enc
