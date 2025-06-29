if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name max_timing\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tsl18fs120_scl_ss.lib\
    ${::IMEX::libVar}/mmmc/tsl18cio150_max.lib]
create_library_set -name min_timing\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tsl18fs120_scl_ff.lib\
    ${::IMEX::libVar}/mmmc/tsl18cio150_min.lib]
create_op_cond -name op_cond_best -library_file ${::IMEX::libVar}/mmmc/tsl18fs120_scl_ff.lib -P 1 -V 1.98 -T -40
create_op_cond -name op_cond_worst -library_file ${::IMEX::libVar}/mmmc/tsl18fs120_scl_ss.lib -P 1 -V 1.62 -T 125
create_rc_corner -name rc_best\
   -cap_table ${::IMEX::libVar}/mmmc/SCL_NEW_26092019_basic.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T -40
create_rc_corner -name rc_worst\
   -cap_table ${::IMEX::libVar}/mmmc/SCL_NEW_26092019_basic.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125
create_delay_corner -name max_delay\
   -rc_corner rc_worst\
   -early_library_set min_timing\
   -late_library_set max_timing\
   -early_opcond_library tsl18fs120_scl_ff\
   -late_opcond_library tsl18fs120_scl_ss\
   -early_opcond op_cond_best\
   -late_opcond op_cond_worst
create_delay_corner -name min_delay\
   -rc_corner rc_best\
   -early_library_set min_timing\
   -late_library_set max_timing\
   -early_opcond_library tsl18fs120_scl_ff\
   -late_opcond_library tsl18fs120_scl_ss\
   -early_opcond op_cond_best\
   -late_opcond op_cond_worst
create_constraint_mode -name all\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/all/all.sdc]
create_analysis_view -name worst -constraint_mode all -delay_corner max_delay -latency_file ${::IMEX::dataVar}/mmmc/views/worst/latency.sdc
create_analysis_view -name best -constraint_mode all -delay_corner min_delay -latency_file ${::IMEX::dataVar}/mmmc/views/best/latency.sdc
set_analysis_view -setup [list worst] -hold [list best]
