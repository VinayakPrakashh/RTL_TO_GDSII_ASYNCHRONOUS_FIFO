* File: pc3t03u.dist.sp
* Created: Sun Jul  4 12:47:25 2010
* Program "Calibre xRC"
* Version "v2008.4_19.14"
* 
.include "pc3t03u.dist.sp.pex"
.subckt pc3t03u  PAD VDDO VSS VSSO VDD I OEN
* 
M37 N_PAD_M38_d N_U28_U42_r1_M37_g N_VSSO_M37_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M38 N_PAD_M38_d N_U28_U42_r1_M38_g N_VSSO_M38_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M39 N_PAD_M40_d N_U28_U42_r1_M39_g N_VSSO_M39_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M40 N_PAD_M40_d N_U28_U42_r1_M40_g N_VSSO_M37_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M35 N_PAD_M41_d N_U15_ngate_M35_g N_VSSO_M35_s N_VSSO_M38_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M41 N_PAD_M41_d N_U28_U42_r1_M41_g N_VSSO_M39_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M31 N_PAD_M36_d N_U17_ngate2_M31_g N_VSSO_M31_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M36 N_PAD_M36_d N_U15_ngate_M36_g N_VSSO_M35_s N_VSSO_M38_b NHV L=5e-07 W=3e-05
+ AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M33 N_PAD_M32_d N_U28_ngate3_M33_g N_VSSO_M33_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M32 N_PAD_M32_d N_U17_ngate2_M32_g N_VSSO_M31_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M42 N_PAD_M34_d N_U28_U42_r1_M42_g N_VSSO_M42_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M34 N_PAD_M34_d N_U28_ngate3_M34_g N_VSSO_M33_s N_VSSO_M38_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M69 N_U28_padr_M69_d N_net_m69_VSSO_res_M69_g N_VDDO_M69_s N_VDDO_M63_b PHV
+ L=2e-06 W=2e-06 AD=4e-12 AS=4e-12 PD=8e-06 PS=8e-06
M56 N_U15_pgate_M56_d N_net_m56_VSSO_res_M56_g N_U28_U72_pgate_M56_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05
+ PS=2.124e-05
M56@2 N_U15_pgate_M56_d N_net_m56_VSSO_res_M56@2_g N_U28_U72_pgate_M56@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M56@3 N_U15_pgate_M56@3_d N_net_m56_VSSO_res_M56@3_g N_U28_U72_pgate_M56@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M56@4 N_U15_pgate_M56@3_d N_net_m56_VSSO_res_M56@4_g N_U28_U72_pgate_M56@4_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M56@5 N_U15_pgate_M56@5_d N_net_m56_VSSO_res_M56@5_g N_U28_U72_pgate_M56@4_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
XR61 N_U28_U42_r1_R61_pos N_VSSO_R61_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06 
XRM69 N_net_m69_VSSO_res_RM69_pos N_VSSO_RM69_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XR57 N_noxref_2_R57_pos N_PAD_R57_neg RNMPOLY2T w=4e-06 l=2.5e-06 
XR58 N_noxref_2_R58_pos N_U28_padr_R58_neg RNMPOLY2T w=4e-06 l=2.5e-06 
M49 N_VDDO_M49_d N_U28_U71_UN_P_TOP_M49_g N_PAD_M49_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M50 N_VDDO_M51_d N_U28_U71_UN_P_TOP_M50_g N_PAD_M49_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M43 N_VDDO_M48_d N_U28_U72_pgate_M43_g N_PAD_M43_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M44 N_VDDO_M44_d N_U28_U72_pgate_M44_g N_PAD_M43_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M51 N_VDDO_M51_d N_U28_U71_UN_P_TOP_M51_g N_PAD_M51_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M52 N_VDDO_M52_d N_U28_U71_UN_P_TOP_M52_g N_PAD_M51_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M53 N_VDDO_M52_d N_U28_U71_UN_P_TOP_M53_g N_PAD_M53_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M54 N_VDDO_M54_d N_U28_U71_UN_P_TOP_M54_g N_PAD_M53_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M45 N_VDDO_M54_d N_U28_U72_pgate_M45_g N_PAD_M45_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M46 N_VDDO_M46_d N_U28_U72_pgate_M46_g N_PAD_M45_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M47 N_VDDO_M46_d N_U28_U72_pgate_M47_g N_PAD_M47_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M48 N_VDDO_M48_d N_U28_U72_pgate_M48_g N_PAD_M47_s N_VDDO_M51_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M55 N_U15_pgate_M55_d N_net_m55_VDDO_res_M55_g N_U28_U72_pgate_M55_s
+ N_VSS_M55_b NHV L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=1.03354e-11 PD=1.749e-05
+ PS=3.458e-05
M55@2 N_U15_pgate_M55_d N_net_m55_VDDO_res_M55@2_g N_U28_U72_pgate_M55@2_s
+ N_VSS_M55_b NHV L=3.6e-07 W=1.667e-05 AD=6.8347e-12 AS=6.8347e-12 PD=1.749e-05
+ PS=1.749e-05
M55@3 N_U15_pgate_M55@3_d N_net_m55_VDDO_res_M55@3_g N_U28_U72_pgate_M55@2_s
+ N_VSS_M55_b NHV L=3.6e-07 W=1.667e-05 AD=1.05021e-11 AS=6.8347e-12 PD=3.46e-05
+ PS=1.749e-05
M62 N_VDDO_M62_d N_net_m62_VDDO_res_M62_g N_U28_U71_UN_P_TOP_M62_s N_VSS_M55_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M3 N_U17_ngate2_M3_d N_I_M3_g N_VSSO_M3_s N_VSS_M55_b NHV L=3.6e-07 W=1.5e-05
+ AD=9.3e-12 AS=9.3e-12 PD=3.124e-05 PS=3.124e-05
M4 N_U17_ngate2_M4_d N_U17_ngatex_M4_g N_VSSO_M4_s N_VSS_M55_b NHV L=3.6e-07
+ W=1e-06 AD=6.2e-13 AS=6.2e-13 PD=3.24e-06 PS=3.24e-06
M1 N_U17_ngatex_M1_d N_U15_ngate_M1_g N_VSSO_M1_s N_VSS_M55_b NHV L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M60 N_U28_ngate3_M60_d N_U17_ngatex_M60_g N_VSSO_M60_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M67 N_U28_padr_M67_d N_net_m67_VSSO_res_M67_g N_VSSO_M67_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M67@2 N_U28_padr_M67@2_d N_net_m67_VSSO_res_M67@2_g N_VSSO_M67_s N_VSS_M55_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M68 N_U30_MPI1_drain_M68_d N_U28_padr_M68_g N_VSSO_M68_s N_VSS_M55_b NHV
+ L=3.6e-07 W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05
M28 N_U15_U12_oenb_M28_d N_U15_U15_OUTSHIFT_M28_g N_VSSO_M28_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=6.2e-12 PD=2.124e-05 PS=2.124e-05
M7 N_U15_ngate_M7_d N_U15_ISHF_M7_g N_VSSO_M7_s N_VSS_M55_b NHV L=3.6e-07
+ W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05
M7@2 N_U15_ngate_M7_d N_U15_ISHF_M7@2_g N_VSSO_M7@2_s N_VSS_M55_b NHV L=3.6e-07
+ W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05
M27 N_U15_ngate_M27_d N_U15_U15_OUTSHIFT_M27_g N_VSSO_M7@2_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.6e-12 AS=4.1e-12 PD=2.132e-05 PS=1.082e-05
M8 N_U15_pgate_M8_d N_U15_U12_oenb_M8_g N_U15_ngate_M8_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M8@2 N_U15_pgate_M8@2_d N_U15_U12_oenb_M8@2_g N_U15_ngate_M8_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05 PS=1.082e-05
M8@3 N_U15_pgate_M8@2_d N_U15_U12_oenb_M8@3_g N_U15_ngate_M8@3_s N_VSS_M55_b
+ NHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05
M21 N_U15_U15_MPLL1_dr_M21_d N_OEN_M21_g N_VSSO_M21_s N_VSS_M55_b NHV L=3.6e-07
+ W=1e-05 AD=6.6e-12 AS=4.1e-12 PD=2.132e-05 PS=1.082e-05
M23 N_VDDO_M23_d N_U15_U15_MN1_drai_M23_g N_U15_U15_MPLL1_dr_M23_s N_VSS_M55_b
+ NHV L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M21@2 N_U15_U15_MPLL1_dr_M21@2_d N_OEN_M21@2_g N_VSSO_M21_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M22 N_U15_U15_OUTSHIFT_M22_d N_U15_U15_MN1_drai_M22_g N_VSSO_M22_s N_VSS_M55_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M22@2 N_U15_U15_OUTSHIFT_M22@2_d N_U15_U15_MN1_drai_M22@2_g N_VSSO_M22_s
+ N_VSS_M55_b NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M15 N_VDDO_M15_d N_U15_U14_MN1_drai_M15_g N_U15_U14_MPLL1_dr_M15_s N_VSS_M55_b
+ NHV L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M13 N_U15_U14_MPLL1_dr_M13_d N_I_M13_g N_VSSO_M13_s N_VSS_M55_b NHV L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M13@2 N_U15_U14_MPLL1_dr_M13@2_d N_I_M13@2_g N_VSSO_M13_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M14 N_U15_ISHF_M14_d N_U15_U14_MN1_drai_M14_g N_VSSO_M14_s N_VSS_M55_b NHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M14@2 N_U15_ISHF_M14@2_d N_U15_U14_MN1_drai_M14@2_g N_VSSO_M14_s N_VSS_M55_b
+ NHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M16 N_U15_U14_MN1_drai_M16_d N_I_M16_g N_VSS_M16_s N_VSS_M55_b N18 L=1.8e-07
+ W=5e-06 AD=2.925e-12 AS=1.8375e-12 PD=1.117e-05 PS=5.735e-06
M24 N_U15_U15_MN1_drai_M24_d N_OEN_M24_g N_VSS_M16_s N_VSS_M55_b N18 L=1.8e-07
+ W=5e-06 AD=2.9e-12 AS=1.8375e-12 PD=1.116e-05 PS=5.735e-06
M63 N_U28_U71_UN_P_TOP_M63_d N_net_m63_VSSO_res_M63_g N_VDDO_M63_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05
M6 U17_U15_U8_sourc N_I_M6_g N_VDDO_M6_s N_VDDO_M63_b PHV L=3.6e-07 W=1.5e-05
+ AD=3.45e-12 AS=9.3e-12 PD=1.546e-05 PS=3.124e-05
M5 N_U17_ngate2_M5_d N_U17_ngatex_M5_g U17_U15_U8_sourc N_VDDO_M63_b PHV
+ L=3.6e-07 W=1.5e-05 AD=1.02e-11 AS=3.45e-12 PD=3.136e-05 PS=1.546e-05
M2 N_U17_ngatex_M2_d N_U15_ngate_M2_g N_VDDO_M2_s N_VDDO_M63_b PHV L=3.6e-07
+ W=7e-06 AD=4.34e-12 AS=4.34e-12 PD=1.524e-05 PS=1.524e-05
M59 N_U28_ngate3_M59_d N_U17_ngatex_M59_g N_U17_ngate2_M59_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=5e-06 AD=3.1e-12 AS=3.1e-12 PD=1.124e-05 PS=1.124e-05
M66 N_U28_padr_M66_d N_net_m66_VDDO_res_M66_g N_VDDO_M66_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=2e-05 AD=1.24e-11 AS=1.24e-11 PD=4.124e-05 PS=4.124e-05
M64 U30_MPI2_drain N_U28_padr_M64_g N_VDDO_M64_s N_VDDO_M63_b PHV L=3.6e-07
+ W=2e-05 AD=4e-12 AS=1.24e-11 PD=2.04e-05 PS=4.124e-05
M65 N_U30_MPI1_drain_M65_d N_U28_padr_M65_g U30_MPI2_drain N_VDDO_M63_b PHV
+ L=3.6e-07 W=2e-05 AD=1.24e-11 AS=4e-12 PD=4.124e-05 PS=2.04e-05
M29 N_U15_U12_oenb_M29_d N_U15_U15_OUTSHIFT_M29_g N_VDDO_M29_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M29@2 N_U15_U12_oenb_M29@2_d N_U15_U15_OUTSHIFT_M29@2_g N_VDDO_M29_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M9 N_U15_pgate_M9_d N_U15_ISHF_M9_g N_VDDO_M9_s N_VDDO_M63_b PHV L=3.6e-07
+ W=2e-05 AD=1.28e-11 AS=8.2e-12 PD=4.128e-05 PS=2.082e-05
M9@2 N_U15_pgate_M9@2_d N_U15_ISHF_M9@2_g N_VDDO_M9_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=2e-05 AD=9.6e-12 AS=8.2e-12 PD=2.776e-05 PS=2.082e-05
M30 N_U15_pgate_M9@2_d N_U15_U12_oenb_M30_g N_VDDO_M30_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=1e-05 AD=4.8e-12 AS=4.1e-12 PD=1.388e-05 PS=1.082e-05
M30@2 N_U15_pgate_M30@2_d N_U15_U12_oenb_M30@2_g N_VDDO_M30_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=1e-05 AD=6.3e-12 AS=4.1e-12 PD=2.126e-05 PS=1.082e-05
M10 N_U15_ngate_M10_d N_U15_U15_OUTSHIFT_M10_g N_U15_pgate_M10_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=6.2e-12 PD=1.082e-05 PS=2.124e-05
M10@2 N_U15_ngate_M10_d N_U15_U15_OUTSHIFT_M10@2_g N_U15_pgate_M10@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=4.1e-12 AS=4.1e-12 PD=1.082e-05
+ PS=1.082e-05
M10@3 N_U15_ngate_M10@3_d N_U15_U15_OUTSHIFT_M10@3_g N_U15_pgate_M10@2_s
+ N_VDDO_M63_b PHV L=3.6e-07 W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05
+ PS=1.082e-05
M19 N_U15_U15_MPLL1_dr_M19_d N_U15_U15_OUTSHIFT_M19_g N_VDDO_M19_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M20 N_U15_U15_OUTSHIFT_M20_d N_U15_U15_MPLL1_dr_M20_g N_VDDO_M19_s N_VDDO_M63_b
+ PHV L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M11 N_U15_U14_MPLL1_dr_M11_d N_U15_ISHF_M11_g N_VDDO_M11_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M12 N_U15_ISHF_M12_d N_U15_U14_MPLL1_dr_M12_g N_VDDO_M11_s N_VDDO_M63_b PHV
+ L=3.6e-07 W=7.2e-06 AD=4.464e-12 AS=2.952e-12 PD=1.564e-05 PS=8.02e-06
M17 N_U15_U14_MN1_drai_M17_d N_I_M17_g N_VDD_M17_s N_VDD_M17_b P18 L=1.8e-07
+ W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05
M17@2 N_U15_U14_MN1_drai_M17_d N_I_M17@2_g N_VDD_M17@2_s N_VDD_M17_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=1.4e-12 PD=5.56e-06 PS=5.56e-06
M25 N_U15_U15_MN1_drai_M25_d N_OEN_M25_g N_VDD_M17@2_s N_VDD_M17_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=1.4e-12 PD=5.56e-06 PS=5.56e-06
M25@2 N_U15_U15_MN1_drai_M25_d N_OEN_M25@2_g N_VDD_M25@2_s N_VDD_M17_b P18
+ L=1.8e-07 W=5e-06 AD=1.4e-12 AS=2.45e-12 PD=5.56e-06 PS=1.098e-05
D18 N_VSS_M55_b N_I_D18_neg DN18  AREA=2.5e-13 PJ=2e-06
D26 N_VSS_M55_b N_OEN_D26_neg DN18  AREA=2.5e-13 PJ=2e-06
XRM63 N_VSSO_RM63_pos N_net_m63_VSSO_res_RM63_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM66 N_net_m66_VDDO_res_RM66_pos N_VDDO_RM66_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM55 N_VDDO_RM55_pos N_net_m55_VDDO_res_RM55_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM62 N_VDDO_RM62_pos N_net_m62_VDDO_res_RM62_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM67 N_VSSO_RM67_pos N_net_m67_VSSO_res_RM67_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
XRM56 N_net_m56_VSSO_res_RM56_pos N_VSSO_RM56_neg RPMPOLY2T w=2e-06 l=6.455e-06
+ 
c_1 U17_U15_U8_sourc 0 0.359732f
c_2 U30_MPI2_drain 0 0.0169448f
*
.include "pc3t03u.dist.sp.PC3T03U.pxi"
*
.ends
*
*
