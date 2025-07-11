* File: pc3x13.dist.sp
* Created: Sun Jul  4 12:55:13 2010
* Program "Calibre xRC"
* Version "v2008.4_19.14"
* 
.include "pc3x13.dist.sp.pex"
.subckt pc3x13  Z EN VSS VDD VDDO VSSO XOUT XIN
* 
M94 N_U12_U19_source_M94_d N_U8_IN_M94_g N_VSS_M94_s N_VSS_M99_b NHV L=3.6e-07
+ W=4e-06 AD=2.48e-12 AS=2.48e-12 PD=9.24e-06 PS=9.24e-06
M93 N_U12_U22_gate_M93_d N_U23_padr_M93_g N_U12_U19_source_M93_s N_VSS_M99_b
+ NHV L=3.6e-07 W=4e-06 AD=2.48e-12 AS=2.48e-12 PD=9.24e-06 PS=9.24e-06
M2 N_U8_OUT_M2_d N_U8_IN_M2_g N_VSS_M2_s N_VSS_M99_b N18 L=3.6e-07 W=1e-05
+ AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M4 N_U8_IN_M4_d N_EN_M4_g N_VSS_M2_s N_VSS_M99_b N18 L=3.6e-07 W=1e-05
+ AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M91 N_U12_U22_drain_M91_d N_U12_U22_gate_M91_g N_VSS_M91_s N_VSS_M99_b N18
+ L=3.6e-07 W=7e-06 AD=4.34e-12 AS=4.34e-12 PD=1.524e-05 PS=1.524e-05
M92 N_Z_M92_d N_U12_U22_drain_M92_g N_VSS_M92_s N_VSS_M99_b N18 L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M92@2 N_Z_M92@2_d N_U12_U22_drain_M92@2_g N_VSS_M92_s N_VSS_M99_b N18 L=3.6e-07
+ W=1e-05 AD=6.2e-12 AS=4.1e-12 PD=2.124e-05 PS=1.082e-05
M97 N_U12_U22_gate_M97_d N_U23_padr_M97_g N_VDD_M97_s N_VDD_M1_b PHV L=3.6e-07
+ W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05
M96 N_U12_U22_gate_M96_d N_U8_IN_M96_g N_VDD_M96_s N_VDD_M1_b PHV L=3.6e-07
+ W=6e-06 AD=3.72e-12 AS=3.72e-12 PD=1.324e-05 PS=1.324e-05
M1 N_U8_OUT_M1_d N_U8_IN_M1_g N_VDD_M1_s N_VDD_M1_b P18 L=3.6e-07 W=1.175e-05
+ AD=4.8175e-12 AS=7.285e-12 PD=1.257e-05 PS=2.474e-05
M1@2 N_U8_OUT_M1_d N_U8_IN_M1@2_g N_VDD_M1@2_s N_VDD_M1_b P18 L=3.6e-07
+ W=1.175e-05 AD=4.8175e-12 AS=4.8175e-12 PD=1.257e-05 PS=1.257e-05
M3 N_U8_IN_M3_d N_EN_M3_g N_VDD_M1@2_s N_VDD_M1_b P18 L=3.6e-07 W=1.175e-05
+ AD=4.8175e-12 AS=4.8175e-12 PD=1.257e-05 PS=1.257e-05
M3@2 N_U8_IN_M3_d N_EN_M3@2_g N_VDD_M3@2_s N_VDD_M1_b P18 L=3.6e-07 W=1.175e-05
+ AD=4.8175e-12 AS=7.285e-12 PD=1.257e-05 PS=2.474e-05
M98 N_Z_M98_d N_U12_U22_drain_M98_g N_VDD_M98_s N_VDD_M1_b P18 L=3.6e-07
+ W=1.4e-05 AD=8.68e-12 AS=6.1075e-12 PD=2.924e-05 PS=1.64675e-05
M98@2 N_Z_M98@2_d N_U12_U22_drain_M98@2_g N_VDD_M98_s N_VDD_M1_b P18 L=3.6e-07
+ W=1.8e-05 AD=7.38e-12 AS=7.8525e-12 PD=1.882e-05 PS=2.11725e-05
M98@3 N_Z_M98@2_d N_U12_U22_drain_M98@3_g N_VDD_M98@3_s N_VDD_M1_b P18
+ L=3.6e-07 W=1.8e-05 AD=7.38e-12 AS=7.38e-12 PD=1.882e-05 PS=1.882e-05
M95 N_U12_U22_drain_M95_d N_U12_U22_gate_M95_g N_VDD_M98@3_s N_VDD_M1_b P18
+ L=3.6e-07 W=1.8e-05 AD=1.116e-11 AS=7.38e-12 PD=3.724e-05 PS=1.882e-05
D90 N_VSS_M99_b N_EN_D90_neg DN18  AREA=2.25e-12 PJ=6e-06
M39 N_XOUT_M39_d N_U22_PADR_M39_g U23_MN4$5_drain N_VSSO_M45_b NHV L=5e-07
+ W=3e-05 AD=8.97e-11 AS=6.6e-12 PD=3.598e-05 PS=3.044e-05
M33 U23_MN4$5_drain N_U8_IN_M33_g N_VSSO_M33_s N_VSSO_M45_b NHV L=5e-07 W=3e-05
+ AD=6.6e-12 AS=3.81e-11 PD=3.044e-05 PS=6.254e-05
M40 N_XOUT_M32_d N_U22_PADR_M40_g U23_MN4$4_drain N_VSSO_M45_b NHV L=5e-07
+ W=3e-05 AD=8.97e-11 AS=6.6e-12 PD=3.598e-05 PS=3.044e-05
M34 U23_MN4$4_drain N_U8_IN_M34_g N_VSSO_M34_s N_VSSO_M45_b NHV L=5e-07 W=3e-05
+ AD=6.6e-12 AS=2.28e-11 PD=3.044e-05 PS=3.152e-05
M41 N_XOUT_M41_d N_U22_PADR_M41_g U23_MN4$3_drain N_VSSO_M45_b NHV L=5e-07
+ W=3e-05 AD=7.56e-11 AS=6.6e-12 PD=3.504e-05 PS=3.044e-05
M35 U23_MN4$3_drain N_U8_IN_M35_g N_VSSO_M34_s N_VSSO_M45_b NHV L=5e-07 W=3e-05
+ AD=6.6e-12 AS=2.28e-11 PD=3.044e-05 PS=3.152e-05
M42 N_XOUT_M41_d N_U22_PADR_M42_g U23_MN4$2_drain N_VSSO_M45_b NHV L=5e-07
+ W=3e-05 AD=7.56e-11 AS=6.6e-12 PD=3.504e-05 PS=3.044e-05
M36 U23_MN4$2_drain N_U8_IN_M36_g N_VSSO_M36_s N_VSSO_M45_b NHV L=5e-07 W=3e-05
+ AD=6.6e-12 AS=2.28e-11 PD=3.044e-05 PS=3.152e-05
M43 N_XOUT_M43_d N_U22_PADR_M43_g U23_MN4$1_drain N_VSSO_M45_b NHV L=5e-07
+ W=3e-05 AD=7.56e-11 AS=6.6e-12 PD=3.504e-05 PS=3.044e-05
M37 U23_MN4$1_drain N_U8_IN_M37_g N_VSSO_M36_s N_VSSO_M45_b NHV L=5e-07 W=3e-05
+ AD=6.6e-12 AS=2.28e-11 PD=3.044e-05 PS=3.152e-05
M44 N_XOUT_M43_d N_U22_PADR_M44_g U23_MN4$0_drain N_VSSO_M45_b NHV L=5e-07
+ W=3e-05 AD=7.56e-11 AS=6.6e-12 PD=3.504e-05 PS=3.044e-05
M38 U23_MN4$0_drain N_U8_IN_M38_g N_VSSO_M38_s N_VSSO_M45_b NHV L=5e-07 W=3e-05
+ AD=6.6e-12 AS=3.81e-11 PD=3.044e-05 PS=6.254e-05
M31 N_XOUT_M39_d N_U23_U73$1_gate_M31_g N_VSSO_M46_s N_VSSO_M45_b NHV L=4e-07
+ W=3e-05 AD=8.97e-11 AS=2.58e-11 PD=3.598e-05 PS=3.172e-05
M32 N_XOUT_M32_d N_U23_U73$1_gate_M32_g N_VSSO_M47_s N_VSSO_M45_b NHV L=4e-07
+ W=3e-05 AD=8.97e-11 AS=2.58e-11 PD=3.598e-05 PS=3.172e-05
M45 N_XOUT_M45_d N_U23_U73$1_gate_M45_g N_VSSO_M45_s N_VSSO_M45_b NHV L=4e-07
+ W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05
M46 N_XOUT_M45_d N_U23_U73$1_gate_M46_g N_VSSO_M46_s N_VSSO_M45_b NHV L=4e-07
+ W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05
M47 N_XOUT_M47_d N_U23_U73$1_gate_M47_g N_VSSO_M47_s N_VSSO_M45_b NHV L=4e-07
+ W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05
M48 N_XOUT_M47_d N_U23_U73$1_gate_M48_g N_VSSO_M45_s N_VSSO_M45_b NHV L=4e-07
+ W=3e-05 AD=1.038e-10 AS=2.58e-11 PD=3.692e-05 PS=3.172e-05
M21 N_VDD_M21_d N_U23_U37_r2_M21_g U23_U85$3_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.04e-11 PD=0.00010684 PS=5.24e-05
M25 U23_U85$3_source N_U23_U37_r2_M25_g N_XOUT_M25_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M26 U23_U85$2_source N_U23_U37_r2_M26_g N_XOUT_M25_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M22 N_VDD_M22_d N_U23_U37_r2_M22_g U23_U85$2_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M23 N_VDD_M22_d N_U23_U37_r2_M23_g U23_U85$1_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M27 U23_U85$1_source N_U23_U37_r2_M27_g N_XOUT_M27_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M28 U23_U85$0_source N_U23_U37_r2_M28_g N_XOUT_M27_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M24 N_VDD_M7_d N_U23_U37_r2_M24_g U23_U85$0_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M5 N_VDD_M12_d N_U8_OUT_M5_g U23_MP4$7_source N_VDD_M7_b PHV L=4e-07 W=5.2e-05
+ AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M13 U23_MP4$7_source N_U22_PADR_M13_g N_XOUT_M13_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M14 U23_MP4$6_source N_U22_PADR_M14_g N_XOUT_M13_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M6 N_VDD_M6_d N_U8_OUT_M6_g U23_MP4$6_source N_VDD_M7_b PHV L=4e-07 W=5.2e-05
+ AD=7.384e-11 AS=1.04e-11 PD=0.00010684 PS=5.24e-05
M7 N_VDD_M7_d N_U8_OUT_M7_g U23_MP4$5_source N_VDD_M7_b PHV L=4e-07 W=5.2e-05
+ AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M15 U23_MP4$5_source N_U22_PADR_M15_g N_XOUT_M15_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M16 U23_MP4$4_source N_U22_PADR_M16_g N_XOUT_M15_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M8 N_VDD_M8_d N_U8_OUT_M8_g U23_MP4$4_source N_VDD_M7_b PHV L=4e-07 W=5.2e-05
+ AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M9 N_VDD_M8_d N_U8_OUT_M9_g U23_MP4$3_source N_VDD_M7_b PHV L=4e-07 W=5.2e-05
+ AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M17 U23_MP4$3_source N_U22_PADR_M17_g N_XOUT_M17_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M18 U23_MP4$2_source N_U22_PADR_M18_g N_XOUT_M17_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M10 N_VDD_M10_d N_U8_OUT_M10_g U23_MP4$2_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M11 N_VDD_M10_d N_U8_OUT_M11_g U23_MP4$1_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
M19 U23_MP4$1_source N_U22_PADR_M19_g N_XOUT_M19_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M20 U23_MP4$0_source N_U22_PADR_M20_g N_XOUT_M19_s N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=1.04e-11 AS=1.2064e-10 PD=5.24e-05 PS=5.664e-05
M12 N_VDD_M12_d N_U8_OUT_M12_g U23_MP4$0_source N_VDD_M7_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.04e-11 PD=5.382e-05 PS=5.24e-05
XR53 N_U23_padr_R53_pos N_X0/X22/noxref_4_R53_neg RNMPOLY2T w=4e-06 l=2.5e-06 
XR54 N_X0/X22/noxref_4_R54_pos N_XOUT_R54_neg RNMPOLY2T w=4e-06 l=2.5e-06 
M99 N_U23_padr_M99_d N_U12_U27$1_gate_M99_g N_VSS_M99_s N_VSS_M99_b N18 L=4e-07
+ W=1.5e-05 AD=5.04e-11 AS=2.145e-11 PD=2.172e-05 PS=3.286e-05
M100 N_U23_padr_M99_d N_U12_U27$1_gate_M100_g N_VSS_M100_s N_VSS_M99_b N18
+ L=4e-07 W=1.5e-05 AD=5.04e-11 AS=2.145e-11 PD=2.172e-05 PS=3.286e-05
XR72 N_VSS_R72_pos N_U22_U82_gate_R72_neg RNWELLSTI2T w=2.1e-06 l=2.1e-06 
XR56 N_VDD_R56_pos U23_U72$1_gate RNWELLSTI2T w=2.1e-06 l=2.1e-06 
XR57 N_VDD_R57_pos N_U23_U37_r2_R57_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06 
XR55 N_VSS_R55_pos N_U23_U73$1_gate_R55_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06 
M76 N_XIN_M82_d N_U22_R_PULLDONW_r_M76_g N_VSSO_M76_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M77 N_XIN_M83_d N_U22_R_PULLDONW_r_M77_g N_VSSO_M77_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M78 N_XIN_M84_d N_U22_R_PULLDONW_r_M78_g N_VSSO_M78_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M79 N_XIN_M85_d N_U22_R_PULLDONW_r_M79_g N_VSSO_M76_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M80 N_XIN_M86_d N_U22_R_PULLDONW_r_M80_g N_VSSO_M80_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=3.99e-11 PD=3.672e-05 PS=6.266e-05
M81 N_XIN_M87_d N_U22_R_PULLDONW_r_M81_g N_VSSO_M78_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
MPCL N_U22_PADR_MPCL_d N_RU1_MPCL_g N_VDD_MPCL_s N_VDD_M1_b P18 L=5e-07 W=2e-05
+ AD=4.66e-11 AS=4.97e-11 PD=2.466e-05 PS=4.497e-05
MPCL@2 N_U22_PADR_MPCL_d N_RU1_MPCL@2_g N_VDD_MPCL@2_s N_VDD_M1_b P18 L=5e-07
+ W=2e-05 AD=4.66e-11 AS=4.97e-11 PD=2.466e-05 PS=4.497e-05
D89@2 N_VSS_D89@2_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D89@3 N_VSS_D89@3_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D89@4 N_VSS_D89@4_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D89@5 N_VSS_D89@5_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D89@6 N_VSS_D89@6_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D89@7 N_VSS_D89@7_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D89 N_VSS_D89_pos N_VSSO_D89@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88@2 N_VSSO_D88@2_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88@3 N_VSSO_D88@3_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88@4 N_VSSO_D88@4_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88@5 N_VSSO_D88@5_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88@6 N_VSSO_D88@6_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88@7 N_VSSO_D88@7_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
D88 N_VSSO_D88_pos N_VSS_D88@2_neg DPH  AREA=1.331e-11 PJ=2.862e-05
XRPUP1 N_RU1_RPUP1_pos N_VDD_RPUP1_neg RPMPOLY2T w=2e-06 l=8e-06 
XR70 N_U22_PADR_R70_pos N_X1/X25/noxref_4_R70_neg RNMPOLY2T w=4e-06 l=2.5e-06 
XR71 N_X1/X25/noxref_4_R71_pos N_XIN_R71_neg RNMPOLY2T w=4e-06 l=2.5e-06 
XR102 N_VSS_R102_pos N_U12_U27$1_gate_R102_neg RNWELLSTI2T w=2.1e-06 l=2.1e-06 
XR73 N_U22_R_PULLDONW_r_R73_pos N_VSSO_R73_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06
+ 
XR74 N_U22_U79$3_gate_R74_pos N_VDDO_R74_neg RNWELLSTI2T w=2.1e-06 l=8.65e-06 
M82 N_XIN_M82_d N_U22_R_PULLDONW_r_M82_g N_VSSO_M82_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M83 N_XIN_M83_d N_U22_R_PULLDONW_r_M83_g N_VSSO_M82_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M84 N_XIN_M84_d N_U22_R_PULLDONW_r_M84_g N_VSSO_M84_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M85 N_XIN_M85_d N_U22_R_PULLDONW_r_M85_g N_VSSO_M84_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M86 N_XIN_M86_d N_U22_R_PULLDONW_r_M86_g N_VSSO_M86_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M87 N_XIN_M87_d N_U22_R_PULLDONW_r_M87_g N_VSSO_M86_s N_VSSO_M82_b NHV L=5e-07
+ W=3e-05 AD=1.008e-10 AS=2.58e-11 PD=3.672e-05 PS=3.172e-05
M75 N_U22_PADR_M75_d N_U22_U82_gate_M75_g N_VSS_M75_s N_VSS_M75_b N18 L=4e-07
+ W=2e-05 AD=4.66e-11 AS=4.97e-11 PD=2.466e-05 PS=4.497e-05
M75@2 N_U22_PADR_M75_d N_U22_U82_gate_M75@2_g N_VSS_M75@2_s N_VSS_M75_b N18
+ L=4e-07 W=2e-05 AD=4.66e-11 AS=4.97e-11 PD=2.466e-05 PS=4.497e-05
M58 N_VDDO_M58_d N_U22_U79$3_gate_M58_g N_XIN_M58_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M59 N_VDDO_M62_d N_U22_U79$3_gate_M59_g N_XIN_M58_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M60 N_VDDO_M69_d N_U22_U79$3_gate_M60_g N_XIN_M60_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M61 N_VDDO_M61_d N_U22_U79$3_gate_M61_g N_XIN_M60_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=7.384e-11 AS=1.2064e-10 PD=0.00010684 PS=5.664e-05
M62 N_VDDO_M62_d N_U22_U79$3_gate_M62_g N_XIN_M62_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M63 N_VDDO_M63_d N_U22_U79$3_gate_M63_g N_XIN_M62_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M64 N_VDDO_M63_d N_U22_U79$3_gate_M64_g N_XIN_M64_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M65 N_VDDO_M65_d N_U22_U79$3_gate_M65_g N_XIN_M64_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M66 N_VDDO_M65_d N_U22_U79$3_gate_M66_g N_XIN_M66_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M67 N_VDDO_M67_d N_U22_U79$3_gate_M67_g N_XIN_M66_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M68 N_VDDO_M67_d N_U22_U79$3_gate_M68_g N_XIN_M68_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
M69 N_VDDO_M69_d N_U22_U79$3_gate_M69_g N_XIN_M68_s N_VDDO_M62_b PHV L=4e-07
+ W=5.2e-05 AD=4.732e-11 AS=1.2064e-10 PD=5.382e-05 PS=5.664e-05
c_1 U23_U72$1_gate 0 35.4454f
c_2 U23_MN4$5_drain 0 0.0877515f
c_3 U23_MN4$4_drain 0 0.0877559f
c_4 U23_MN4$3_drain 0 0.0877559f
c_5 U23_MN4$2_drain 0 0.0877559f
c_6 U23_MN4$1_drain 0 0.0877559f
c_7 U23_MN4$0_drain 0 0.088001f
c_8 U23_U85$3_source 0 0.01206f
c_9 U23_U85$2_source 0 0.01206f
c_10 U23_U85$1_source 0 0.0116103f
c_11 U23_U85$0_source 0 0.0116103f
c_12 U23_MP4$7_source 0 0.0268771f
c_13 U23_MP4$6_source 0 0.0270855f
c_14 U23_MP4$5_source 0 0.0268771f
c_15 U23_MP4$4_source 0 0.0268771f
c_16 U23_MP4$3_source 0 0.0268771f
c_17 U23_MP4$2_source 0 0.0268771f
c_18 U23_MP4$1_source 0 0.0268771f
c_19 U23_MP4$0_source 0 0.0268771f
*
.include "pc3x13.dist.sp.PC3X13.pxi"
*
.ends
*
*
