* File: pt3b01u.dist.sp
* Created: Sun Jul  4 12:57:03 2010
* Program "Calibre xRC"
* Version "v2008.4_19.14"
* 
.include "pt3b01u.dist.sp.pex"
.subckt pt3b01u  PAD VDDO VSS VSSO CIN VDD I OEN
* 
M35 N_PAD_M36_d N_U27_U69$9_gate_M35_g N_VSSO_M35_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M36 N_PAD_M36_d N_U27_U69$9_gate_M36_g N_VSSO_M36_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M37 N_PAD_M38_d N_U27_U69$9_gate_M37_g N_VSSO_M37_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M38 N_PAD_M38_d N_U27_U69$9_gate_M38_g N_VSSO_M35_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M39 N_PAD_M40_d N_U27_U69$9_gate_M39_g N_VSSO_M39_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M40 N_PAD_M40_d N_U27_U69$9_gate_M40_g N_VSSO_M37_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M41 N_PAD_M42_d N_U27_U69$9_gate_M41_g N_VSSO_M41_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M42 N_PAD_M42_d N_U27_U69$9_gate_M42_g N_VSSO_M39_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M33 N_PAD_M43_d N_U15_ngate_M33_g N_VSSO_M33_s N_VSSO_M36_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M43 N_PAD_M43_d N_U27_U69$9_gate_M43_g N_VSSO_M41_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M44 N_PAD_M34_d N_U27_U69$9_gate_M44_g N_VSSO_M44_s N_VSSO_M36_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M34 N_PAD_M34_d N_U15_ngate_M34_g N_VSSO_M33_s N_VSSO_M36_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M1 N_U27_padr_M1_d N_net_m1_VSSO_res_M1_g N_VDDO_M1_s N_VDDO_M63_b PHV L=2e-06
+ W=2e-06 AD=4e-12 AS=4e-12 PD=8e-06 PS=8e-06
M58 N_U15_pgate_M58_d N_net_m58_VSSO_res_M58_g N_U27_U72_pgate_M58_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05
+ PS=2.124e-05
M58@2 N_U15_pgate_M58_d N_net_m58_VSSO_res_M58@2_g N_U27_U72_pgate_M58@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M58@3 N_U15_pgate_M58@3_d N_net_m58_VSSO_res_M58@3_g N_U27_U72_pgate_M58@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M58@4 N_U15_pgate_M58@3_d N_net_m58_VSSO_res_M58@4_g N_U27_U72_pgate_M58@4_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M58@5 N_U15_pgate_M58@5_d N_net_m58_VSSO_res_M58@5_g N_U27_U72_pgate_M58@4_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
XR61 N_U27_U69$9_gate_R61_pos N_VSSO_R61_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06 
XRM1 N_net_m1_VSSO_res_RM1_pos N_VSSO_RM1_neg RPMPOLY2T w=2e-06 l=6.455e-06 
XR59 N_noxref_2_R59_pos N_PAD_R59_neg RNMPOLY2T w=4e-06 l=2.5e-06 
XR60 N_noxref_2_R60_pos N_U27_padr_R60_neg RNMPOLY2T w=4e-06 l=2.5e-06 
M47 N_VDDO_M47_d N_U27_U71_UN_P_TOP_M47_g N_PAD_M47_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M48 N_VDDO_M49_d N_U27_U71_UN_P_TOP_M48_g N_PAD_M47_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M45 N_VDDO_M56_d N_U27_U72_pgate_M45_g N_PAD_M45_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M46 N_VDDO_M46_d N_U27_U72_pgate_M46_g N_PAD_M45_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M49 N_VDDO_M49_d N_U27_U71_UN_P_TOP_M49_g N_PAD_M49_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M50 N_VDDO_M50_d N_U27_U71_UN_P_TOP_M50_g N_PAD_M49_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M51 N_VDDO_M50_d N_U27_U71_UN_P_TOP_M51_g N_PAD_M51_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M52 N_VDDO_M52_d N_U27_U71_UN_P_TOP_M52_g N_PAD_M51_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M53 N_VDDO_M52_d N_U27_U71_UN_P_TOP_M53_g N_PAD_M53_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M54 N_VDDO_M54_d N_U27_U71_UN_P_TOP_M54_g N_PAD_M53_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M55 N_VDDO_M54_d N_U27_U71_UN_P_TOP_M55_g N_PAD_M55_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M56 N_VDDO_M56_d N_U27_U71_UN_P_TOP_M56_g N_PAD_M55_s N_VDDO_M49_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M57 N_U15_pgate_M57_d N_net_m57_VDDO_res_M57_g N_U27_U72_pgate_M57_s
+ N_VSS_M57_b NHV L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=1.03354e-11 PD=1.749e-05
+ PS=3.458e-05
M57@2 N_U15_pgate_M57_d N_net_m57_VDDO_res_M57@2_g N_U27_U72_pgate_M57@2_s
+ N_VSS_M57_b NHV L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=6.8347e-12 PD=1.749e-05
+ PS=1.749e-05
M57@3 N_U15_pgate_M57@3_d N_net_m57_VDDO_res_M57@3_g N_U27_U72_pgate_M57@2_s
+ N_VSS_M57_b NHV L=3.6e-07 W=1.667e-05 AD=1.05021e-11 AS=6.8347e-12 PD=3.46e-05
+ PS=1.749e-05
M62 N_VDDO_M62_d N_net_m62_VDDO_res_M62_g N_U27_U71_UN_P_TOP_M62_s N_VSS_M57_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M7 N_U27_padr_M7_d N_net_m7_VSSO_res_M7_g N_VSSO_M7_s N_VSS_M57_b NHV L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M7@2 N_U27_padr_M7@2_d N_net_m7_VSSO_res_M7@2_g N_VSSO_M7_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M6 N_U26_MPI1_drain_M6_d N_U27_padr_M6_g N_VSSO_M6_s N_VSS_M57_b NHV L=3.6e-07
+ W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05
M8 N_CIN_M8_d N_U26_MPI1_drain_M8_g N_VSS_M8_s N_VSS_M57_b NHV L=3.6e-07
+ W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05
M30 N_U15_U12_oenb_M30_d N_U15_U15_OUTSHIFT_M30_g N_VSSO_M30_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M9 N_U15_ngate_M9_d N_U15_ISHF_M9_g N_VSSO_M9_s N_VSS_M57_b NHV L=3.6e-07
+ W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05
M9@2 N_U15_ngate_M9_d N_U15_ISHF_M9@2_g N_VSSO_M9@2_s N_VSS_M57_b NHV L=3.6e-07
+ W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05
M29 N_U15_ngate_M29_d N_U15_U15_OUTSHIFT_M29_g N_VSSO_M9@2_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.6e-12 AS=4.1e-12 PD=2.132e-05 PS=1.082e-05
M10 N_U15_pgate_M10_d N_U15_U12_oenb_M10_g N_U15_ngate_M10_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M10@2 N_U15_pgate_M10@2_d N_U15_U12_oenb_M10@2_g N_U15_ngate_M10_s N_VSS_M57_b
+ NHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05
M10@3 N_U15_pgate_M10@2_d N_U15_U12_oenb_M10@3_g N_U15_ngate_M10@3_s
+ N_VSS_M57_b NHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05
+ PS=2.124e-05
M23 N_U15_U15_MPLL1_dr_M23_d N_OEN_M23_g N_VSSO_M23_s N_VSS_M57_b NHV L=3.6e-07
+ W=1e-05 AD=6.6e-12 AS=4.1e-12 PD=2.132e-05 PS=1.082e-05
M25 N_VDDO_M25_d N_U15_U15_MN1_drai_M25_g N_U15_U15_MPLL1_dr_M25_s N_VSS_M57_b
+ NHV L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M23@2 N_U15_U15_MPLL1_dr_M23@2_d N_OEN_M23@2_g N_VSSO_M23_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M24 N_U15_U15_OUTSHIFT_M24_d N_U15_U15_MN1_drai_M24_g N_VSSO_M24_s N_VSS_M57_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M24@2 N_U15_U15_OUTSHIFT_M24@2_d N_U15_U15_MN1_drai_M24@2_g N_VSSO_M24_s
+ N_VSS_M57_b NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M17 N_VDDO_M17_d N_U15_U14_MN1_drai_M17_g N_U15_U14_MPLL1_dr_M17_s N_VSS_M57_b
+ NHV L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M15 N_U15_U14_MPLL1_dr_M15_d N_I_M15_g N_VSSO_M15_s N_VSS_M57_b NHV L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M15@2 N_U15_U14_MPLL1_dr_M15@2_d N_I_M15@2_g N_VSSO_M15_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M16 N_U15_ISHF_M16_d N_U15_U14_MN1_drai_M16_g N_VSSO_M16_s N_VSS_M57_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M16@2 N_U15_ISHF_M16@2_d N_U15_U14_MN1_drai_M16@2_g N_VSSO_M16_s N_VSS_M57_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M18 N_U15_U14_MN1_drai_M18_d N_I_M18_g N_VSS_M18_s N_VSS_M57_b N18 L=1.8e-07
+ W=5e-06 AD=2.925e-12 AS=1.8375e-12 PD=1.117e-05 PS=5.735e-06
M26 N_U15_U15_MN1_drai_M26_d N_OEN_M26_g N_VSS_M18_s N_VSS_M57_b N18 L=1.8e-07
+ W=5e-06 AD=2.9e-12 AS=1.8375e-12 PD=1.116e-05 PS=5.735e-06
M63 N_U27_U71_UN_P_TOP_M63_d N_net_m63_VSSO_res_M63_g N_VDDO_M63_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05
M4 N_U27_padr_M4_d N_net_m4_VDDO_res_M4_g N_VDDO_M4_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05
M2 U26_MPI2_drain N_U27_padr_M2_g N_VDDO_M2_s N_VDDO_M63_b PHV L=3.6e-07
+ W=2e-05 AD=4e-12 AS=1.24e-11 PD=2.04e-05 PS=4.124e-05
M3 N_U26_MPI1_drain_M3_d N_U27_padr_M3_g U26_MPI2_drain N_VDDO_M63_b PHV
+ L=3.6e-07 W=2e-05 AD=1.24e-11 AS=4e-12 PD=4.124e-05 PS=2.04e-05
M31 N_U15_U12_oenb_M31_d N_U15_U15_OUTSHIFT_M31_g N_VDDO_M31_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M31@2 N_U15_U12_oenb_M31@2_d N_U15_U15_OUTSHIFT_M31@2_g N_VDDO_M31_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M11 N_U15_pgate_M11_d N_U15_ISHF_M11_g N_VDDO_M11_s N_VDDO_M63_b PHV L=3.6e-07
+ W=2e-05 AD=1.28e-11 AS=8.2e-12 PD=4.128e-05 PS=2.082e-05
M11@2 N_U15_pgate_M11@2_d N_U15_ISHF_M11@2_g N_VDDO_M11_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=2e-05 AD=9.6e-12 AS=8.2e-12 PD=2.776e-05 PS=2.082e-05
M32 N_U15_pgate_M11@2_d N_U15_U12_oenb_M32_g N_VDDO_M32_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=1e-05 AD=4.8e-12 AS=4.1e-12 PD=1.388e-05 PS=1.082e-05
M32@2 N_U15_pgate_M32@2_d N_U15_U12_oenb_M32@2_g N_VDDO_M32_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=1e-05 AD=6.3e-12 AS=4.1e-12 PD=2.126e-05 PS=1.082e-05
M12 N_U15_ngate_M12_d N_U15_U15_OUTSHIFT_M12_g N_U15_pgate_M12_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05
M12@2 N_U15_ngate_M12_d N_U15_U15_OUTSHIFT_M12@2_g N_U15_pgate_M12@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M12@3 N_U15_ngate_M12@3_d N_U15_U15_OUTSHIFT_M12@3_g N_U15_pgate_M12@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M21 N_U15_U15_MPLL1_dr_M21_d N_U15_U15_OUTSHIFT_M21_g N_VDDO_M21_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M22 N_U15_U15_OUTSHIFT_M22_d N_U15_U15_MPLL1_dr_M22_g N_VDDO_M21_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M13 N_U15_U14_MPLL1_dr_M13_d N_U15_ISHF_M13_g N_VDDO_M13_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M14 N_U15_ISHF_M14_d N_U15_U14_MPLL1_dr_M14_g N_VDDO_M13_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M5 N_CIN_M5_d N_U26_MPI1_drain_M5_g N_VDD_M5_s N_VDD_M19_b PHV L=3.6e-07
+ W=8e-06 AD=5.36e-12 AS=3.28e-12 PD=1.734e-05 PS=8.82e-06
M5@2 N_CIN_M5@2_d N_U26_MPI1_drain_M5@2_g N_VDD_M5_s N_VDD_M19_b PHV L=3.6e-07
+ W=8e-06 AD=3.28e-12 AS=3.28e-12 PD=8.82e-06 PS=8.82e-06
M5@3 N_CIN_M5@2_d N_U26_MPI1_drain_M5@3_g N_VDD_M5@3_s N_VDD_M19_b PHV
+ L=3.6e-07 W=8e-06 AD=3.28e-12 AS=3.28e-12 PD=8.82e-06 PS=8.82e-06
M5@4 N_CIN_M5@4_d N_U26_MPI1_drain_M5@4_g N_VDD_M5@3_s N_VDD_M19_b PHV
+ L=3.6e-07 W=8e-06 AD=4.96e-12 AS=3.28e-12 PD=1.724e-05 PS=8.82e-06
M19 N_U15_U14_MN1_drai_M19_d N_I_M19_g N_VDD_M19_s N_VDD_M19_b P18 L=1.8e-07
+ W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05
M19@2 N_U15_U14_MN1_drai_M19_d N_I_M19@2_g N_VDD_M19@2_s N_VDD_M19_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=1.4e-12 PD=5.56e-06 PS=5.56e-06
M27 N_U15_U15_MN1_drai_M27_d N_OEN_M27_g N_VDD_M19@2_s N_VDD_M19_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=1.4e-12 PD=5.56e-06 PS=5.56e-06
M27@2 N_U15_U15_MN1_drai_M27_d N_OEN_M27@2_g N_VDD_M27@2_s N_VDD_M19_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05
D20 N_VSS_M57_b N_I_D20_neg DN18  AREA=2.5e-13 PJ=2e-06
D28 N_VSS_M57_b N_OEN_D28_neg DN18  AREA=2.5e-13 PJ=2e-06
XRM63 N_VSSO_RM63_pos N_net_m63_VSSO_res_RM63_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM4 N_net_m4_VDDO_res_RM4_pos N_VDDO_RM4_neg RPMPOLY2T w=2e-06 l=6.455e-06 
XRM57 N_VDDO_RM57_pos N_net_m57_VDDO_res_RM57_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM62 N_VDDO_RM62_pos N_net_m62_VDDO_res_RM62_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM7 N_VSSO_RM7_pos N_net_m7_VSSO_res_RM7_neg RPMPOLY2T w=2e-06 l=6.455e-06 
XRM58 N_net_m58_VSSO_res_RM58_pos N_VSSO_RM58_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
c_1 U26_MPI2_drain 0 0.0169448f
*
.include "pt3b01u.dist.sp.PT3B01U.pxi"
*
.ends
*
*
