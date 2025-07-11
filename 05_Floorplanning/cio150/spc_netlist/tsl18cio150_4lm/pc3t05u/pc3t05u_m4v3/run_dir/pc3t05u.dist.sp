* File: pc3t05u.dist.sp
* Created: Sun Jul  4 12:51:55 2010
* Program "Calibre xRC"
* Version "v2008.4_19.14"
* 
.include "pc3t05u.dist.sp.pex"
.subckt pc3t05u  PAD VDDO VSS VSSO VDD I OEN
* 
M15 N_PAD_M13_d N_U30_ngate_M15_g N_VSSO_M15_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M13 N_PAD_M13_d N_U29_U42_r1_M13_g N_VSSO_M13_s N_VSSO_M13_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M16 N_PAD_M17_d N_U30_ngate_M16_g N_VSSO_M16_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M17 N_PAD_M17_d N_U30_ngate_M17_g N_VSSO_M15_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M9 N_PAD_M18_d N_U17_ngate2_M9_g N_VSSO_M9_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M18 N_PAD_M18_d N_U30_ngate_M18_g N_VSSO_M16_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M10 N_PAD_M11_d N_U17_ngate2_M10_g N_VSSO_M10_s N_VSSO_M13_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M11 N_PAD_M11_d N_U17_ngate2_M11_g N_VSSO_M9_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M7 N_PAD_M12_d N_U29_ngate3_M7_g N_VSSO_M7_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M12 N_PAD_M12_d N_U17_ngate2_M12_g N_VSSO_M10_s N_VSSO_M13_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M14 N_PAD_M8_d N_U29_U42_r1_M14_g N_VSSO_M14_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M8 N_PAD_M8_d N_U29_ngate3_M8_g N_VSSO_M7_s N_VSSO_M13_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M20 N_U30_pgate_M20_d N_net_m20_VSSO_res_M20_g N_U29_U72_pgate_M20_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05
+ PS=2.124e-05
M20@2 N_U30_pgate_M20_d N_net_m20_VSSO_res_M20@2_g N_U29_U72_pgate_M20@2_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M20@3 N_U30_pgate_M20@3_d N_net_m20_VSSO_res_M20@3_g N_U29_U72_pgate_M20@2_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M20@4 N_U30_pgate_M20@3_d N_net_m20_VSSO_res_M20@4_g N_U29_U72_pgate_M20@4_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M20@5 N_U30_pgate_M20@5_d N_net_m20_VSSO_res_M20@5_g N_U29_U72_pgate_M20@4_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M69 N_U29_padr_M69_d N_net_m69_VSSO_res_M69_g N_VDDO_M69_s N_VDDO_M39_b PHV
+ L=2e-06 W=2e-06 AD=4e-12 AS=4e-12 PD=8e-06 PS=8e-06
XR37 N_U29_U42_r1_R37_pos N_VSSO_R37_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06 
XRM69 N_VSSO_RM69_pos N_net_m69_VSSO_res_RM69_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XR21 N_noxref_2_R21_pos N_PAD_R21_neg RNMPOLY2T w=4e-06 l=2.5e-06 
XR22 N_noxref_2_R22_pos N_U29_padr_R22_neg RNMPOLY2T w=4e-06 l=2.5e-06 
M35 N_VDDO_M35_d N_U29_U71_UN_P_TOP_M35_g N_PAD_M35_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M36 N_VDDO_M27_d N_U29_U71_UN_P_TOP_M36_g N_PAD_M35_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M25 N_VDDO_M34_d N_U29_U72_pgate_M25_g N_PAD_M25_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M26 N_VDDO_M26_d N_U29_U72_pgate_M26_g N_PAD_M25_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M27 N_VDDO_M27_d N_U29_U72_pgate_M27_g N_PAD_M27_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M28 N_VDDO_M28_d N_U29_U72_pgate_M28_g N_PAD_M27_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M29 N_VDDO_M28_d N_U29_U72_pgate_M29_g N_PAD_M29_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M30 N_VDDO_M30_d N_U29_U72_pgate_M30_g N_PAD_M29_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M31 N_VDDO_M30_d N_U29_U72_pgate_M31_g N_PAD_M31_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M32 N_VDDO_M32_d N_U29_U72_pgate_M32_g N_PAD_M31_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M33 N_VDDO_M32_d N_U29_U72_pgate_M33_g N_PAD_M33_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M34 N_VDDO_M34_d N_U29_U72_pgate_M34_g N_PAD_M33_s N_VDDO_M27_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M19 N_U30_pgate_M19_d N_net_m19_VDDO_res_M19_g N_U29_U72_pgate_M19_s
+ N_VSS_M19_b NHV L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=1.03354e-11 PD=1.749e-05
+ PS=3.458e-05
M19@2 N_U30_pgate_M19_d N_net_m19_VDDO_res_M19@2_g N_U29_U72_pgate_M19@2_s
+ N_VSS_M19_b NHV L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=6.8347e-12 PD=1.749e-05
+ PS=1.749e-05
M19@3 N_U30_pgate_M19@3_d N_net_m19_VDDO_res_M19@3_g N_U29_U72_pgate_M19@2_s
+ N_VSS_M19_b NHV L=3.6e-07 W=1.667e-05 AD=1.05021e-11 AS=6.8347e-12 PD=3.46e-05
+ PS=1.749e-05
M38 N_VDDO_M38_d N_net_m38_VDDO_res_M38_g N_U29_U71_UN_P_TOP_M38_s N_VSS_M19_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M3 N_U17_ngate2_M3_d N_I_M3_g N_VSSO_M3_s N_VSS_M19_b NHV L=3.6e-07 W=1.5e-05
+ AD=9.3e-12 AS=9.3e-12 PD=3.124e-05 PS=3.124e-05
M4 N_U17_ngate2_M4_d N_U17_ngatex_M4_g N_VSSO_M4_s N_VSS_M19_b NHV L=3.6e-07
+ W=1e-06 AD=6.2e-13 AS=6.2e-13 PD=3.24e-06 PS=3.24e-06
M1 N_U17_ngatex_M1_d N_U30_ngate_M1_g N_VSSO_M1_s N_VSS_M19_b NHV L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M24 N_U29_ngate3_M24_d N_U17_ngatex_M24_g N_VSSO_M24_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M67 N_U29_padr_M67_d N_net_m67_VSSO_res_M67_g N_VSSO_M67_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M67@2 N_U29_padr_M67@2_d N_net_m67_VSSO_res_M67@2_g N_VSSO_M67_s N_VSS_M19_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M68 N_U32_MPI1_drain_M68_d N_U29_padr_M68_g N_VSSO_M68_s N_VSS_M19_b NHV
+ L=3.6e-07 W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05
M61 N_U30_U12_oenb_M61_d N_U30_U15_OUTSHIFT_M61_g N_VSSO_M61_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M42 N_U30_ngate_M42_d N_U30_ISHF_M42_g N_VSSO_M42_s N_VSS_M19_b NHV L=3.6e-07
+ W=1.5e-05 AD=6.15e-12 AS=9.3e-12 PD=1.582e-05 PS=3.124e-05
M42@2 N_U30_ngate_M42_d N_U30_ISHF_M42@2_g N_VSSO_M42@2_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1.5e-05 AD=6.15e-12 AS=6.97793e-12 PD=1.582e-05 PS=1.89385e-05
M60 N_U30_ngate_M60_d N_U30_U15_OUTSHIFT_M60_g N_VSSO_M42@2_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1.006e-05 AD=6.2372e-12 AS=4.67987e-12 PD=2.136e-05 PS=1.27015e-05
M43 N_U30_pgate_M43_d N_U30_U12_oenb_M43_g N_U30_ngate_M43_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M43@2 N_U30_pgate_M43@2_d N_U30_U12_oenb_M43@2_g N_U30_ngate_M43_s N_VSS_M19_b
+ NHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05
M43@3 N_U30_pgate_M43@2_d N_U30_U12_oenb_M43@3_g N_U30_ngate_M43@3_s
+ N_VSS_M19_b NHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05
+ PS=2.124e-05
M54 N_U30_U15_MPLL1_dr_M54_d N_OEN_M54_g N_VSSO_M54_s N_VSS_M19_b NHV L=3.6e-07
+ W=1e-05 AD=6.6e-12 AS=4.1e-12 PD=2.132e-05 PS=1.082e-05
M56 N_VDDO_M56_d N_U30_U15_MN1_drai_M56_g N_U30_U15_MPLL1_dr_M56_s N_VSS_M19_b
+ NHV L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M54@2 N_U30_U15_MPLL1_dr_M54@2_d N_OEN_M54@2_g N_VSSO_M54_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M55 N_U30_U15_OUTSHIFT_M55_d N_U30_U15_MN1_drai_M55_g N_VSSO_M55_s N_VSS_M19_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M55@2 N_U30_U15_OUTSHIFT_M55@2_d N_U30_U15_MN1_drai_M55@2_g N_VSSO_M55_s
+ N_VSS_M19_b NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M48 N_VDDO_M48_d N_U30_U14_MN1_drai_M48_g N_U30_U14_MPLL1_dr_M48_s N_VSS_M19_b
+ NHV L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M46 N_U30_U14_MPLL1_dr_M46_d N_I_M46_g N_VSSO_M46_s N_VSS_M19_b NHV L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M46@2 N_U30_U14_MPLL1_dr_M46@2_d N_I_M46@2_g N_VSSO_M46_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M47 N_U30_ISHF_M47_d N_U30_U14_MN1_drai_M47_g N_VSSO_M47_s N_VSS_M19_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M47@2 N_U30_ISHF_M47@2_d N_U30_U14_MN1_drai_M47@2_g N_VSSO_M47_s N_VSS_M19_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M49 N_U30_U14_MN1_drai_M49_d N_I_M49_g N_VSS_M49_s N_VSS_M19_b N18 L=1.8e-07
+ W=5e-06 AD=2.925e-12 AS=1.8375e-12 PD=1.117e-05 PS=5.735e-06
M57 N_U30_U15_MN1_drai_M57_d N_OEN_M57_g N_VSS_M49_s N_VSS_M19_b N18 L=1.8e-07
+ W=5e-06 AD=2.9e-12 AS=1.8375e-12 PD=1.116e-05 PS=5.735e-06
M39 N_U29_U71_UN_P_TOP_M39_d N_net_m39_VSSO_res_M39_g N_VDDO_M39_s N_VDDO_M39_b
+ PHV L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05
M6 U17_U15_U8_sourc N_I_M6_g N_VDDO_M6_s N_VDDO_M39_b PHV L=3.6e-07 W=1.5e-05
+ AD=3.45e-12 AS=9.3e-12 PD=1.546e-05 PS=3.124e-05
M5 N_U17_ngate2_M5_d N_U17_ngatex_M5_g U17_U15_U8_sourc N_VDDO_M39_b PHV
+ L=3.6e-07 W=1.5e-05 AD=1.02e-11 AS=3.45e-12 PD=3.136e-05 PS=1.546e-05
M2 N_U17_ngatex_M2_d N_U30_ngate_M2_g N_VDDO_M2_s N_VDDO_M39_b PHV L=3.6e-07
+ W=7e-06 AD=4.34e-12 AS=4.34e-12 PD=1.524e-05 PS=1.524e-05
M23 N_U29_ngate3_M23_d N_U17_ngatex_M23_g N_U17_ngate2_M23_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M66 N_U29_padr_M66_d N_net_m66_VDDO_res_M66_g N_VDDO_M66_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05
M64 U32_MPI2_drain N_U29_padr_M64_g N_VDDO_M64_s N_VDDO_M39_b PHV L=3.6e-07
+ W=2e-05 AD=4e-12 AS=1.24e-11 PD=2.04e-05 PS=4.124e-05
M65 N_U32_MPI1_drain_M65_d N_U29_padr_M65_g U32_MPI2_drain N_VDDO_M39_b PHV
+ L=3.6e-07 W=2e-05 AD=1.24e-11 AS=4e-12 PD=4.124e-05 PS=2.04e-05
M62 N_U30_U12_oenb_M62_d N_U30_U15_OUTSHIFT_M62_g N_VDDO_M62_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M62@2 N_U30_U12_oenb_M62@2_d N_U30_U15_OUTSHIFT_M62@2_g N_VDDO_M62_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M40 N_U30_pgate_M40_d N_U30_ISHF_M40_g N_VDDO_M40_s N_VDDO_M39_b PHV L=3.6e-07
+ W=2e-05 AD=8.2e-12 AS=1.24e-11 PD=2.082e-05 PS=4.124e-05
M40@2 N_U30_pgate_M40_d N_U30_ISHF_M40@2_g N_VDDO_M40@2_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=2e-05 AD=8.2e-12 AS=8.2e-12 PD=2.082e-05 PS=2.082e-05
M40@3 N_U30_pgate_M40@3_d N_U30_ISHF_M40@3_g N_VDDO_M40@2_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=2e-05 AD=9.66667e-12 AS=8.2e-12 PD=2.776e-05 PS=2.082e-05
M63 N_U30_pgate_M40@3_d N_U30_U12_oenb_M63_g N_VDDO_M63_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=1e-05 AD=4.83333e-12 AS=4.1e-12 PD=1.388e-05 PS=1.082e-05
M63@2 N_U30_pgate_M63@2_d N_U30_U12_oenb_M63@2_g N_VDDO_M63_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M41 N_U30_ngate_M41_d N_U30_U15_OUTSHIFT_M41_g N_U30_pgate_M41_s N_VDDO_M39_b
+ PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05
M41@2 N_U30_ngate_M41_d N_U30_U15_OUTSHIFT_M41@2_g N_U30_pgate_M41@2_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M41@3 N_U30_ngate_M41@3_d N_U30_U15_OUTSHIFT_M41@3_g N_U30_pgate_M41@2_s
+ N_VDDO_M39_b PHV L=3.6e-07 W=1e-05 AD=7.2e-12 AS=4.1e-12 PD=2.144e-05
+ PS=1.082e-05
M52 N_U30_U15_MPLL1_dr_M52_d N_U30_U15_OUTSHIFT_M52_g N_VDDO_M52_s N_VDDO_M39_b
+ PHV L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M53 N_U30_U15_OUTSHIFT_M53_d N_U30_U15_MPLL1_dr_M53_g N_VDDO_M52_s N_VDDO_M39_b
+ PHV L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M44 N_U30_U14_MPLL1_dr_M44_d N_U30_ISHF_M44_g N_VDDO_M44_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M45 N_U30_ISHF_M45_d N_U30_U14_MPLL1_dr_M45_g N_VDDO_M44_s N_VDDO_M39_b PHV
+ L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M50 N_U30_U14_MN1_drai_M50_d N_I_M50_g N_VDD_M50_s N_VDD_M50_b P18 L=1.8e-07
+ W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05
M50@2 N_U30_U14_MN1_drai_M50_d N_I_M50@2_g N_VDD_M50@2_s N_VDD_M50_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=1.4e-12 PD=5.56e-06 PS=5.56e-06
M58 N_U30_U15_MN1_drai_M58_d N_OEN_M58_g N_VDD_M50@2_s N_VDD_M50_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=1.4e-12 PD=5.56e-06 PS=5.56e-06
M58@2 N_U30_U15_MN1_drai_M58_d N_OEN_M58@2_g N_VDD_M58@2_s N_VDD_M50_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05
D51 N_VSS_M19_b N_I_D51_neg DN18  AREA=2.5e-13 PJ=2e-06
D59 N_VSS_M19_b N_OEN_D59_neg DN18  AREA=2.5e-13 PJ=2e-06
XRM39 N_VSSO_RM39_pos N_net_m39_VSSO_res_RM39_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM66 N_net_m66_VDDO_res_RM66_pos N_VDDO_RM66_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM19 N_VDDO_RM19_pos N_net_m19_VDDO_res_RM19_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM38 N_VDDO_RM38_pos N_net_m38_VDDO_res_RM38_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM67 N_VSSO_RM67_pos N_net_m67_VSSO_res_RM67_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM20 N_net_m20_VSSO_res_RM20_pos N_VSSO_RM20_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
c_1 U17_U15_U8_sourc 0 0.359751f
c_2 U32_MPI2_drain 0 0.0169448f
*
.include "pc3t05u.dist.sp.PC3T05U.pxi"
*
.ends
*
*
