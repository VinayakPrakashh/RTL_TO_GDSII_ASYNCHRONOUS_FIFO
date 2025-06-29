REAd IMplementation Information fv/fifo_top -revised fv_map
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET MUltiplier Implementation boothrca -both
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path /run/media/user1/c2s/cadence/install/SCL_PDK/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ss\
   /run/media/user1/c2s/cadence/install/SCL_PDK/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ff\
   -library -both
REAd LIbrary -liberty -both /run/media/user1/c2s/cadence/install/SCL_PDK/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib\
   /run/media/user1/c2s/cadence/install/SCL_PDK/scl180/scl180/iopad/cio150/4M1L/liberty/tsl18cio150_min.lib\
   /run/media/user1/c2s/cadence/install/SCL_PDK/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib\
   /run/media/user1/c2s/cadence/install/SCL_PDK/scl180/scl180/iopad/cio150/4M1L/liberty/tsl18cio150_min.lib
SET UNDRiven Signal 0 -golden
SET NAming Style genus -golden
SET NAming Rule %s[%d] -instance_array -golden
SET NAming Rule %s_reg -register -golden
SET NAming Rule %L.%s %L[%d].%s %s -instance -golden
SET NAming Rule %L.%s %L[%d].%s %s -variable -golden
SET NAming Rule -ungroup_separator _ -golden
SET HDl Options -const_port_extend
SET HDl Options -unsigned_conversion_overflow on
SET HDl Options -v_to_vd on
SET HDl Options -VERILOG_INCLUDE_DIR sep:src
DELete SEarch Path -all -design -golden
ADD SEarch Path /run/media/user1/c2s/S5_training_batch2/VINAYAK/02_synthesis/RTL_source -design -golden
REAd DEsign -define SYNTHESIS -merge bbox -golden -lastmod -noelab -verilog2k /run/media/user1/c2s/S5_training_batch2/VINAYAK/02_synthesis/RTL_source/fifo_pad.v
ELAborate DEsign -golden -root fifo_top -rootonly
REAd DEsign -verilog95 -revised -lastmod -noelab fv/fifo_top/fv_map.v.gz
ELAborate DEsign -revised -root fifo_top
UNIQuify -all -nolib -golden
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
SET FLatten Model -balanced_modeling
CHEck VErification Information
SET ANalyze Option -auto -report_map
WRIte HIer_compare Dofile hier_tmp2.lec.do -verbose -noexact_pin_match -constraint -usage -replace -balanced_extraction\
   -input_output_pin_equivalence -prepend_string "report_design_data; report_unmapped_points -summary; report_unmapped_points -notmapped; analyze_datapath -module -verbose; eval analyze_datapath -flowgraph -verbose"
RUN HIer_compare hier_tmp2.lec.do -dynamic_hierarchy
REPort HIer_compare Result -dynamicflattened
REPort VErification -hier -verbose
SET SYstem Mode lec
WRIte COmpared Points noneq.compared_points.fifo_top.rtl.fv_map.tcl -class noneq -tclmode -replace
ANAlyze NOnequivalent -source_diagnosis
REPort NOnequivalent Analysis
REPort TEst Vector -noneq
SET SYstem Mode setup
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
SET SYstem Mode lec
ANAlyze RESults -logfiles rtl2intermediate.lec.log
