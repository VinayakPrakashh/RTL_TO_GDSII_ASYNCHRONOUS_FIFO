# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Thu Feb 20 10:59:09 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design fifo_top

create_clock -name "write_clk" -period 15.0 -waveform {0.0 7.0} [get_ports wr_clk_pad]
create_clock -name "read_clk" -period 30.0 -waveform {0.0 15.0} [get_ports rd_clk_pad]
create_clock -name "wr_vir_clk_i" -period 15.0 -waveform {0.0 7.5} 
create_clock -name "rd_vir_clk_i" -period 30.0 -waveform {0.0 15.0} 
set_clock_transition -min 1.875 [get_clocks write_clk]
set_clock_transition -max 3.0 [get_clocks write_clk]
set_clock_transition -min 3.75 [get_clocks read_clk]
set_clock_transition -max 6.0 [get_clocks read_clk]
set_load -pin_load 5.0 [get_ports {rd_data_pad[7]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[6]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[5]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[4]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[3]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[2]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[1]}]
set_load -pin_load 5.0 [get_ports {rd_data_pad[0]}]
set_load -pin_load 5.0 [get_ports empty_pad]
set_load -pin_load 5.0 [get_ports full_pad]
set_false_path -from [list \
  [get_ports wr_rst_pad]  \
  [get_ports rd_rst_pad]  \
  [get_ports rd_en_pad]  \
  [get_ports wr_en_pad] ] -to [list \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells f/full_r_reg]  \
  [get_cells {f/wr_addr_bin_r_reg[0]}]  \
  [get_cells {f/wr_addr_bin_r_reg[1]}]  \
  [get_cells {f/wr_addr_bin_r_reg[2]}]  \
  [get_cells {f/wr_addr_bin_r_reg[4]}]  \
  [get_cells {f/wr_addr_bin_r_reg[3]}]  \
  [get_cells e/empty_r_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[0]}]  \
  [get_cells {e/rd_addr_bin_r_reg[1]}]  \
  [get_cells {e/rd_addr_bin_r_reg[2]}]  \
  [get_cells {e/rd_addr_bin_r_reg[3]}]  \
  [get_cells {m/mem_reg[0][0]}]  \
  [get_cells {m/mem_reg[0][1]}]  \
  [get_cells {m/mem_reg[0][2]}]  \
  [get_cells {m/mem_reg[0][3]}]  \
  [get_cells {m/mem_reg[0][4]}]  \
  [get_cells {m/mem_reg[0][5]}]  \
  [get_cells {m/mem_reg[0][6]}]  \
  [get_cells {m/mem_reg[0][7]}]  \
  [get_cells {m/mem_reg[1][0]}]  \
  [get_cells {m/mem_reg[1][1]}]  \
  [get_cells {m/mem_reg[1][2]}]  \
  [get_cells {m/mem_reg[1][3]}]  \
  [get_cells {m/mem_reg[1][4]}]  \
  [get_cells {m/mem_reg[1][5]}]  \
  [get_cells {m/mem_reg[1][6]}]  \
  [get_cells {m/mem_reg[1][7]}]  \
  [get_cells {m/mem_reg[2][0]}]  \
  [get_cells {m/mem_reg[2][1]}]  \
  [get_cells {m/mem_reg[2][2]}]  \
  [get_cells {m/mem_reg[2][3]}]  \
  [get_cells {m/mem_reg[2][4]}]  \
  [get_cells {m/mem_reg[2][5]}]  \
  [get_cells {m/mem_reg[2][6]}]  \
  [get_cells {m/mem_reg[2][7]}]  \
  [get_cells {m/mem_reg[3][0]}]  \
  [get_cells {m/mem_reg[3][1]}]  \
  [get_cells {m/mem_reg[3][2]}]  \
  [get_cells {m/mem_reg[3][3]}]  \
  [get_cells {m/mem_reg[3][4]}]  \
  [get_cells {m/mem_reg[3][5]}]  \
  [get_cells {m/mem_reg[3][6]}]  \
  [get_cells {m/mem_reg[3][7]}]  \
  [get_cells {m/mem_reg[4][0]}]  \
  [get_cells {m/mem_reg[4][1]}]  \
  [get_cells {m/mem_reg[4][2]}]  \
  [get_cells {m/mem_reg[4][3]}]  \
  [get_cells {m/mem_reg[4][4]}]  \
  [get_cells {m/mem_reg[4][5]}]  \
  [get_cells {m/mem_reg[4][6]}]  \
  [get_cells {m/mem_reg[4][7]}]  \
  [get_cells {m/mem_reg[5][0]}]  \
  [get_cells {m/mem_reg[5][1]}]  \
  [get_cells {m/mem_reg[5][2]}]  \
  [get_cells {m/mem_reg[5][3]}]  \
  [get_cells {m/mem_reg[5][4]}]  \
  [get_cells {m/mem_reg[5][5]}]  \
  [get_cells {m/mem_reg[5][6]}]  \
  [get_cells {m/mem_reg[5][7]}]  \
  [get_cells {m/mem_reg[6][0]}]  \
  [get_cells {m/mem_reg[6][1]}]  \
  [get_cells {m/mem_reg[6][2]}]  \
  [get_cells {m/mem_reg[6][3]}]  \
  [get_cells {m/mem_reg[6][4]}]  \
  [get_cells {m/mem_reg[6][5]}]  \
  [get_cells {m/mem_reg[6][6]}]  \
  [get_cells {m/mem_reg[6][7]}]  \
  [get_cells {m/mem_reg[7][0]}]  \
  [get_cells {m/mem_reg[7][1]}]  \
  [get_cells {m/mem_reg[7][2]}]  \
  [get_cells {m/mem_reg[7][3]}]  \
  [get_cells {m/mem_reg[7][4]}]  \
  [get_cells {m/mem_reg[7][5]}]  \
  [get_cells {m/mem_reg[7][6]}]  \
  [get_cells {m/mem_reg[7][7]}]  \
  [get_cells {m/mem_reg[8][0]}]  \
  [get_cells {m/mem_reg[8][1]}]  \
  [get_cells {m/mem_reg[8][2]}]  \
  [get_cells {m/mem_reg[8][3]}]  \
  [get_cells {m/mem_reg[8][4]}]  \
  [get_cells {m/mem_reg[8][5]}]  \
  [get_cells {m/mem_reg[8][6]}]  \
  [get_cells {m/mem_reg[8][7]}]  \
  [get_cells {m/mem_reg[9][0]}]  \
  [get_cells {m/mem_reg[9][1]}]  \
  [get_cells {m/mem_reg[9][2]}]  \
  [get_cells {m/mem_reg[9][3]}]  \
  [get_cells {m/mem_reg[9][4]}]  \
  [get_cells {m/mem_reg[9][5]}]  \
  [get_cells {m/mem_reg[9][6]}]  \
  [get_cells {m/mem_reg[9][7]}]  \
  [get_cells {m/mem_reg[10][0]}]  \
  [get_cells {m/mem_reg[10][1]}]  \
  [get_cells {m/mem_reg[10][2]}]  \
  [get_cells {m/mem_reg[10][3]}]  \
  [get_cells {m/mem_reg[10][4]}]  \
  [get_cells {m/mem_reg[10][5]}]  \
  [get_cells {m/mem_reg[10][6]}]  \
  [get_cells {m/mem_reg[10][7]}]  \
  [get_cells {m/mem_reg[11][0]}]  \
  [get_cells {m/mem_reg[11][1]}]  \
  [get_cells {m/mem_reg[11][2]}]  \
  [get_cells {m/mem_reg[11][3]}]  \
  [get_cells {m/mem_reg[11][4]}]  \
  [get_cells {m/mem_reg[11][5]}]  \
  [get_cells {m/mem_reg[11][6]}]  \
  [get_cells {m/mem_reg[11][7]}]  \
  [get_cells {m/mem_reg[12][0]}]  \
  [get_cells {m/mem_reg[12][1]}]  \
  [get_cells {m/mem_reg[12][2]}]  \
  [get_cells {m/mem_reg[12][3]}]  \
  [get_cells {m/mem_reg[12][4]}]  \
  [get_cells {m/mem_reg[12][5]}]  \
  [get_cells {m/mem_reg[12][6]}]  \
  [get_cells {m/mem_reg[12][7]}]  \
  [get_cells {m/mem_reg[13][0]}]  \
  [get_cells {m/mem_reg[13][1]}]  \
  [get_cells {m/mem_reg[13][2]}]  \
  [get_cells {m/mem_reg[13][3]}]  \
  [get_cells {m/mem_reg[13][4]}]  \
  [get_cells {m/mem_reg[13][5]}]  \
  [get_cells {m/mem_reg[13][6]}]  \
  [get_cells {m/mem_reg[13][7]}]  \
  [get_cells {m/mem_reg[14][0]}]  \
  [get_cells {m/mem_reg[14][1]}]  \
  [get_cells {m/mem_reg[14][2]}]  \
  [get_cells {m/mem_reg[14][3]}]  \
  [get_cells {m/mem_reg[14][4]}]  \
  [get_cells {m/mem_reg[14][5]}]  \
  [get_cells {m/mem_reg[14][6]}]  \
  [get_cells {m/mem_reg[14][7]}]  \
  [get_cells {m/mem_reg[15][0]}]  \
  [get_cells {m/mem_reg[15][1]}]  \
  [get_cells {m/mem_reg[15][2]}]  \
  [get_cells {m/mem_reg[15][3]}]  \
  [get_cells {m/mem_reg[15][4]}]  \
  [get_cells {m/mem_reg[15][5]}]  \
  [get_cells {m/mem_reg[15][6]}]  \
  [get_cells {m/mem_reg[15][7]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[3]}]  \
  [get_cells {f/wr_addr_grey_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[1]}]  \
  [get_cells {f/wr_addr_grey_reg[0]}]  \
  [get_cells {e/rd_addr_grey_reg[3]}]  \
  [get_cells {e/rd_addr_grey_reg[2]}]  \
  [get_cells {e/rd_addr_grey_reg[1]}]  \
  [get_cells {e/rd_addr_grey_reg[0]}]  \
  [get_cells wr_sync/rst_sync_reg]  \
  [get_cells wr_sync/rst_sync_reg_reg]  \
  [get_cells rd_sync/rst_sync_reg]  \
  [get_cells rd_sync/rst_sync_reg_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[4]}] ]
set_false_path -from [get_clocks read_clk] -to [get_clocks write_clk]
set_false_path -from [get_clocks read_clk] -to [get_clocks wr_vir_clk_i]
set_false_path -from [get_clocks write_clk] -to [get_clocks read_clk]
set_false_path -from [get_clocks write_clk] -to [get_clocks rd_vir_clk_i]
group_path -weight 1.000000 -name I2R -from [list \
  [get_ports wr_clk_pad]  \
  [get_ports rd_clk_pad]  \
  [get_ports wr_en_pad]  \
  [get_ports rd_en_pad]  \
  [get_ports wr_rst_pad]  \
  [get_ports rd_rst_pad]  \
  [get_ports {wr_data_pad[7]}]  \
  [get_ports {wr_data_pad[6]}]  \
  [get_ports {wr_data_pad[5]}]  \
  [get_ports {wr_data_pad[4]}]  \
  [get_ports {wr_data_pad[3]}]  \
  [get_ports {wr_data_pad[2]}]  \
  [get_ports {wr_data_pad[1]}]  \
  [get_ports {wr_data_pad[0]}] ] -to [list \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells f/full_r_reg]  \
  [get_cells {f/wr_addr_bin_r_reg[0]}]  \
  [get_cells {f/wr_addr_bin_r_reg[1]}]  \
  [get_cells {f/wr_addr_bin_r_reg[2]}]  \
  [get_cells {f/wr_addr_bin_r_reg[4]}]  \
  [get_cells {f/wr_addr_bin_r_reg[3]}]  \
  [get_cells e/empty_r_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[0]}]  \
  [get_cells {e/rd_addr_bin_r_reg[1]}]  \
  [get_cells {e/rd_addr_bin_r_reg[2]}]  \
  [get_cells {e/rd_addr_bin_r_reg[3]}]  \
  [get_cells {m/mem_reg[0][0]}]  \
  [get_cells {m/mem_reg[0][1]}]  \
  [get_cells {m/mem_reg[0][2]}]  \
  [get_cells {m/mem_reg[0][3]}]  \
  [get_cells {m/mem_reg[0][4]}]  \
  [get_cells {m/mem_reg[0][5]}]  \
  [get_cells {m/mem_reg[0][6]}]  \
  [get_cells {m/mem_reg[0][7]}]  \
  [get_cells {m/mem_reg[1][0]}]  \
  [get_cells {m/mem_reg[1][1]}]  \
  [get_cells {m/mem_reg[1][2]}]  \
  [get_cells {m/mem_reg[1][3]}]  \
  [get_cells {m/mem_reg[1][4]}]  \
  [get_cells {m/mem_reg[1][5]}]  \
  [get_cells {m/mem_reg[1][6]}]  \
  [get_cells {m/mem_reg[1][7]}]  \
  [get_cells {m/mem_reg[2][0]}]  \
  [get_cells {m/mem_reg[2][1]}]  \
  [get_cells {m/mem_reg[2][2]}]  \
  [get_cells {m/mem_reg[2][3]}]  \
  [get_cells {m/mem_reg[2][4]}]  \
  [get_cells {m/mem_reg[2][5]}]  \
  [get_cells {m/mem_reg[2][6]}]  \
  [get_cells {m/mem_reg[2][7]}]  \
  [get_cells {m/mem_reg[3][0]}]  \
  [get_cells {m/mem_reg[3][1]}]  \
  [get_cells {m/mem_reg[3][2]}]  \
  [get_cells {m/mem_reg[3][3]}]  \
  [get_cells {m/mem_reg[3][4]}]  \
  [get_cells {m/mem_reg[3][5]}]  \
  [get_cells {m/mem_reg[3][6]}]  \
  [get_cells {m/mem_reg[3][7]}]  \
  [get_cells {m/mem_reg[4][0]}]  \
  [get_cells {m/mem_reg[4][1]}]  \
  [get_cells {m/mem_reg[4][2]}]  \
  [get_cells {m/mem_reg[4][3]}]  \
  [get_cells {m/mem_reg[4][4]}]  \
  [get_cells {m/mem_reg[4][5]}]  \
  [get_cells {m/mem_reg[4][6]}]  \
  [get_cells {m/mem_reg[4][7]}]  \
  [get_cells {m/mem_reg[5][0]}]  \
  [get_cells {m/mem_reg[5][1]}]  \
  [get_cells {m/mem_reg[5][2]}]  \
  [get_cells {m/mem_reg[5][3]}]  \
  [get_cells {m/mem_reg[5][4]}]  \
  [get_cells {m/mem_reg[5][5]}]  \
  [get_cells {m/mem_reg[5][6]}]  \
  [get_cells {m/mem_reg[5][7]}]  \
  [get_cells {m/mem_reg[6][0]}]  \
  [get_cells {m/mem_reg[6][1]}]  \
  [get_cells {m/mem_reg[6][2]}]  \
  [get_cells {m/mem_reg[6][3]}]  \
  [get_cells {m/mem_reg[6][4]}]  \
  [get_cells {m/mem_reg[6][5]}]  \
  [get_cells {m/mem_reg[6][6]}]  \
  [get_cells {m/mem_reg[6][7]}]  \
  [get_cells {m/mem_reg[7][0]}]  \
  [get_cells {m/mem_reg[7][1]}]  \
  [get_cells {m/mem_reg[7][2]}]  \
  [get_cells {m/mem_reg[7][3]}]  \
  [get_cells {m/mem_reg[7][4]}]  \
  [get_cells {m/mem_reg[7][5]}]  \
  [get_cells {m/mem_reg[7][6]}]  \
  [get_cells {m/mem_reg[7][7]}]  \
  [get_cells {m/mem_reg[8][0]}]  \
  [get_cells {m/mem_reg[8][1]}]  \
  [get_cells {m/mem_reg[8][2]}]  \
  [get_cells {m/mem_reg[8][3]}]  \
  [get_cells {m/mem_reg[8][4]}]  \
  [get_cells {m/mem_reg[8][5]}]  \
  [get_cells {m/mem_reg[8][6]}]  \
  [get_cells {m/mem_reg[8][7]}]  \
  [get_cells {m/mem_reg[9][0]}]  \
  [get_cells {m/mem_reg[9][1]}]  \
  [get_cells {m/mem_reg[9][2]}]  \
  [get_cells {m/mem_reg[9][3]}]  \
  [get_cells {m/mem_reg[9][4]}]  \
  [get_cells {m/mem_reg[9][5]}]  \
  [get_cells {m/mem_reg[9][6]}]  \
  [get_cells {m/mem_reg[9][7]}]  \
  [get_cells {m/mem_reg[10][0]}]  \
  [get_cells {m/mem_reg[10][1]}]  \
  [get_cells {m/mem_reg[10][2]}]  \
  [get_cells {m/mem_reg[10][3]}]  \
  [get_cells {m/mem_reg[10][4]}]  \
  [get_cells {m/mem_reg[10][5]}]  \
  [get_cells {m/mem_reg[10][6]}]  \
  [get_cells {m/mem_reg[10][7]}]  \
  [get_cells {m/mem_reg[11][0]}]  \
  [get_cells {m/mem_reg[11][1]}]  \
  [get_cells {m/mem_reg[11][2]}]  \
  [get_cells {m/mem_reg[11][3]}]  \
  [get_cells {m/mem_reg[11][4]}]  \
  [get_cells {m/mem_reg[11][5]}]  \
  [get_cells {m/mem_reg[11][6]}]  \
  [get_cells {m/mem_reg[11][7]}]  \
  [get_cells {m/mem_reg[12][0]}]  \
  [get_cells {m/mem_reg[12][1]}]  \
  [get_cells {m/mem_reg[12][2]}]  \
  [get_cells {m/mem_reg[12][3]}]  \
  [get_cells {m/mem_reg[12][4]}]  \
  [get_cells {m/mem_reg[12][5]}]  \
  [get_cells {m/mem_reg[12][6]}]  \
  [get_cells {m/mem_reg[12][7]}]  \
  [get_cells {m/mem_reg[13][0]}]  \
  [get_cells {m/mem_reg[13][1]}]  \
  [get_cells {m/mem_reg[13][2]}]  \
  [get_cells {m/mem_reg[13][3]}]  \
  [get_cells {m/mem_reg[13][4]}]  \
  [get_cells {m/mem_reg[13][5]}]  \
  [get_cells {m/mem_reg[13][6]}]  \
  [get_cells {m/mem_reg[13][7]}]  \
  [get_cells {m/mem_reg[14][0]}]  \
  [get_cells {m/mem_reg[14][1]}]  \
  [get_cells {m/mem_reg[14][2]}]  \
  [get_cells {m/mem_reg[14][3]}]  \
  [get_cells {m/mem_reg[14][4]}]  \
  [get_cells {m/mem_reg[14][5]}]  \
  [get_cells {m/mem_reg[14][6]}]  \
  [get_cells {m/mem_reg[14][7]}]  \
  [get_cells {m/mem_reg[15][0]}]  \
  [get_cells {m/mem_reg[15][1]}]  \
  [get_cells {m/mem_reg[15][2]}]  \
  [get_cells {m/mem_reg[15][3]}]  \
  [get_cells {m/mem_reg[15][4]}]  \
  [get_cells {m/mem_reg[15][5]}]  \
  [get_cells {m/mem_reg[15][6]}]  \
  [get_cells {m/mem_reg[15][7]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[3]}]  \
  [get_cells {f/wr_addr_grey_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[1]}]  \
  [get_cells {f/wr_addr_grey_reg[0]}]  \
  [get_cells {e/rd_addr_grey_reg[3]}]  \
  [get_cells {e/rd_addr_grey_reg[2]}]  \
  [get_cells {e/rd_addr_grey_reg[1]}]  \
  [get_cells {e/rd_addr_grey_reg[0]}]  \
  [get_cells wr_sync/rst_sync_reg]  \
  [get_cells wr_sync/rst_sync_reg_reg]  \
  [get_cells rd_sync/rst_sync_reg]  \
  [get_cells rd_sync/rst_sync_reg_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[4]}] ]
group_path -weight 1.000000 -name R2O -from [list \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells f/full_r_reg]  \
  [get_cells {f/wr_addr_bin_r_reg[0]}]  \
  [get_cells {f/wr_addr_bin_r_reg[1]}]  \
  [get_cells {f/wr_addr_bin_r_reg[2]}]  \
  [get_cells {f/wr_addr_bin_r_reg[4]}]  \
  [get_cells {f/wr_addr_bin_r_reg[3]}]  \
  [get_cells e/empty_r_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[0]}]  \
  [get_cells {e/rd_addr_bin_r_reg[1]}]  \
  [get_cells {e/rd_addr_bin_r_reg[2]}]  \
  [get_cells {e/rd_addr_bin_r_reg[3]}]  \
  [get_cells {m/mem_reg[0][0]}]  \
  [get_cells {m/mem_reg[0][1]}]  \
  [get_cells {m/mem_reg[0][2]}]  \
  [get_cells {m/mem_reg[0][3]}]  \
  [get_cells {m/mem_reg[0][4]}]  \
  [get_cells {m/mem_reg[0][5]}]  \
  [get_cells {m/mem_reg[0][6]}]  \
  [get_cells {m/mem_reg[0][7]}]  \
  [get_cells {m/mem_reg[1][0]}]  \
  [get_cells {m/mem_reg[1][1]}]  \
  [get_cells {m/mem_reg[1][2]}]  \
  [get_cells {m/mem_reg[1][3]}]  \
  [get_cells {m/mem_reg[1][4]}]  \
  [get_cells {m/mem_reg[1][5]}]  \
  [get_cells {m/mem_reg[1][6]}]  \
  [get_cells {m/mem_reg[1][7]}]  \
  [get_cells {m/mem_reg[2][0]}]  \
  [get_cells {m/mem_reg[2][1]}]  \
  [get_cells {m/mem_reg[2][2]}]  \
  [get_cells {m/mem_reg[2][3]}]  \
  [get_cells {m/mem_reg[2][4]}]  \
  [get_cells {m/mem_reg[2][5]}]  \
  [get_cells {m/mem_reg[2][6]}]  \
  [get_cells {m/mem_reg[2][7]}]  \
  [get_cells {m/mem_reg[3][0]}]  \
  [get_cells {m/mem_reg[3][1]}]  \
  [get_cells {m/mem_reg[3][2]}]  \
  [get_cells {m/mem_reg[3][3]}]  \
  [get_cells {m/mem_reg[3][4]}]  \
  [get_cells {m/mem_reg[3][5]}]  \
  [get_cells {m/mem_reg[3][6]}]  \
  [get_cells {m/mem_reg[3][7]}]  \
  [get_cells {m/mem_reg[4][0]}]  \
  [get_cells {m/mem_reg[4][1]}]  \
  [get_cells {m/mem_reg[4][2]}]  \
  [get_cells {m/mem_reg[4][3]}]  \
  [get_cells {m/mem_reg[4][4]}]  \
  [get_cells {m/mem_reg[4][5]}]  \
  [get_cells {m/mem_reg[4][6]}]  \
  [get_cells {m/mem_reg[4][7]}]  \
  [get_cells {m/mem_reg[5][0]}]  \
  [get_cells {m/mem_reg[5][1]}]  \
  [get_cells {m/mem_reg[5][2]}]  \
  [get_cells {m/mem_reg[5][3]}]  \
  [get_cells {m/mem_reg[5][4]}]  \
  [get_cells {m/mem_reg[5][5]}]  \
  [get_cells {m/mem_reg[5][6]}]  \
  [get_cells {m/mem_reg[5][7]}]  \
  [get_cells {m/mem_reg[6][0]}]  \
  [get_cells {m/mem_reg[6][1]}]  \
  [get_cells {m/mem_reg[6][2]}]  \
  [get_cells {m/mem_reg[6][3]}]  \
  [get_cells {m/mem_reg[6][4]}]  \
  [get_cells {m/mem_reg[6][5]}]  \
  [get_cells {m/mem_reg[6][6]}]  \
  [get_cells {m/mem_reg[6][7]}]  \
  [get_cells {m/mem_reg[7][0]}]  \
  [get_cells {m/mem_reg[7][1]}]  \
  [get_cells {m/mem_reg[7][2]}]  \
  [get_cells {m/mem_reg[7][3]}]  \
  [get_cells {m/mem_reg[7][4]}]  \
  [get_cells {m/mem_reg[7][5]}]  \
  [get_cells {m/mem_reg[7][6]}]  \
  [get_cells {m/mem_reg[7][7]}]  \
  [get_cells {m/mem_reg[8][0]}]  \
  [get_cells {m/mem_reg[8][1]}]  \
  [get_cells {m/mem_reg[8][2]}]  \
  [get_cells {m/mem_reg[8][3]}]  \
  [get_cells {m/mem_reg[8][4]}]  \
  [get_cells {m/mem_reg[8][5]}]  \
  [get_cells {m/mem_reg[8][6]}]  \
  [get_cells {m/mem_reg[8][7]}]  \
  [get_cells {m/mem_reg[9][0]}]  \
  [get_cells {m/mem_reg[9][1]}]  \
  [get_cells {m/mem_reg[9][2]}]  \
  [get_cells {m/mem_reg[9][3]}]  \
  [get_cells {m/mem_reg[9][4]}]  \
  [get_cells {m/mem_reg[9][5]}]  \
  [get_cells {m/mem_reg[9][6]}]  \
  [get_cells {m/mem_reg[9][7]}]  \
  [get_cells {m/mem_reg[10][0]}]  \
  [get_cells {m/mem_reg[10][1]}]  \
  [get_cells {m/mem_reg[10][2]}]  \
  [get_cells {m/mem_reg[10][3]}]  \
  [get_cells {m/mem_reg[10][4]}]  \
  [get_cells {m/mem_reg[10][5]}]  \
  [get_cells {m/mem_reg[10][6]}]  \
  [get_cells {m/mem_reg[10][7]}]  \
  [get_cells {m/mem_reg[11][0]}]  \
  [get_cells {m/mem_reg[11][1]}]  \
  [get_cells {m/mem_reg[11][2]}]  \
  [get_cells {m/mem_reg[11][3]}]  \
  [get_cells {m/mem_reg[11][4]}]  \
  [get_cells {m/mem_reg[11][5]}]  \
  [get_cells {m/mem_reg[11][6]}]  \
  [get_cells {m/mem_reg[11][7]}]  \
  [get_cells {m/mem_reg[12][0]}]  \
  [get_cells {m/mem_reg[12][1]}]  \
  [get_cells {m/mem_reg[12][2]}]  \
  [get_cells {m/mem_reg[12][3]}]  \
  [get_cells {m/mem_reg[12][4]}]  \
  [get_cells {m/mem_reg[12][5]}]  \
  [get_cells {m/mem_reg[12][6]}]  \
  [get_cells {m/mem_reg[12][7]}]  \
  [get_cells {m/mem_reg[13][0]}]  \
  [get_cells {m/mem_reg[13][1]}]  \
  [get_cells {m/mem_reg[13][2]}]  \
  [get_cells {m/mem_reg[13][3]}]  \
  [get_cells {m/mem_reg[13][4]}]  \
  [get_cells {m/mem_reg[13][5]}]  \
  [get_cells {m/mem_reg[13][6]}]  \
  [get_cells {m/mem_reg[13][7]}]  \
  [get_cells {m/mem_reg[14][0]}]  \
  [get_cells {m/mem_reg[14][1]}]  \
  [get_cells {m/mem_reg[14][2]}]  \
  [get_cells {m/mem_reg[14][3]}]  \
  [get_cells {m/mem_reg[14][4]}]  \
  [get_cells {m/mem_reg[14][5]}]  \
  [get_cells {m/mem_reg[14][6]}]  \
  [get_cells {m/mem_reg[14][7]}]  \
  [get_cells {m/mem_reg[15][0]}]  \
  [get_cells {m/mem_reg[15][1]}]  \
  [get_cells {m/mem_reg[15][2]}]  \
  [get_cells {m/mem_reg[15][3]}]  \
  [get_cells {m/mem_reg[15][4]}]  \
  [get_cells {m/mem_reg[15][5]}]  \
  [get_cells {m/mem_reg[15][6]}]  \
  [get_cells {m/mem_reg[15][7]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[3]}]  \
  [get_cells {f/wr_addr_grey_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[1]}]  \
  [get_cells {f/wr_addr_grey_reg[0]}]  \
  [get_cells {e/rd_addr_grey_reg[3]}]  \
  [get_cells {e/rd_addr_grey_reg[2]}]  \
  [get_cells {e/rd_addr_grey_reg[1]}]  \
  [get_cells {e/rd_addr_grey_reg[0]}]  \
  [get_cells wr_sync/rst_sync_reg]  \
  [get_cells wr_sync/rst_sync_reg_reg]  \
  [get_cells rd_sync/rst_sync_reg]  \
  [get_cells rd_sync/rst_sync_reg_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[4]}] ] -to [list \
  [get_ports {rd_data_pad[7]}]  \
  [get_ports {rd_data_pad[6]}]  \
  [get_ports {rd_data_pad[5]}]  \
  [get_ports {rd_data_pad[4]}]  \
  [get_ports {rd_data_pad[3]}]  \
  [get_ports {rd_data_pad[2]}]  \
  [get_ports {rd_data_pad[1]}]  \
  [get_ports {rd_data_pad[0]}]  \
  [get_ports empty_pad]  \
  [get_ports full_pad] ]
group_path -weight 1.000000 -name R2R -from [list \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells f/full_r_reg]  \
  [get_cells {f/wr_addr_bin_r_reg[0]}]  \
  [get_cells {f/wr_addr_bin_r_reg[1]}]  \
  [get_cells {f/wr_addr_bin_r_reg[2]}]  \
  [get_cells {f/wr_addr_bin_r_reg[4]}]  \
  [get_cells {f/wr_addr_bin_r_reg[3]}]  \
  [get_cells e/empty_r_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[0]}]  \
  [get_cells {e/rd_addr_bin_r_reg[1]}]  \
  [get_cells {e/rd_addr_bin_r_reg[2]}]  \
  [get_cells {e/rd_addr_bin_r_reg[3]}]  \
  [get_cells {m/mem_reg[0][0]}]  \
  [get_cells {m/mem_reg[0][1]}]  \
  [get_cells {m/mem_reg[0][2]}]  \
  [get_cells {m/mem_reg[0][3]}]  \
  [get_cells {m/mem_reg[0][4]}]  \
  [get_cells {m/mem_reg[0][5]}]  \
  [get_cells {m/mem_reg[0][6]}]  \
  [get_cells {m/mem_reg[0][7]}]  \
  [get_cells {m/mem_reg[1][0]}]  \
  [get_cells {m/mem_reg[1][1]}]  \
  [get_cells {m/mem_reg[1][2]}]  \
  [get_cells {m/mem_reg[1][3]}]  \
  [get_cells {m/mem_reg[1][4]}]  \
  [get_cells {m/mem_reg[1][5]}]  \
  [get_cells {m/mem_reg[1][6]}]  \
  [get_cells {m/mem_reg[1][7]}]  \
  [get_cells {m/mem_reg[2][0]}]  \
  [get_cells {m/mem_reg[2][1]}]  \
  [get_cells {m/mem_reg[2][2]}]  \
  [get_cells {m/mem_reg[2][3]}]  \
  [get_cells {m/mem_reg[2][4]}]  \
  [get_cells {m/mem_reg[2][5]}]  \
  [get_cells {m/mem_reg[2][6]}]  \
  [get_cells {m/mem_reg[2][7]}]  \
  [get_cells {m/mem_reg[3][0]}]  \
  [get_cells {m/mem_reg[3][1]}]  \
  [get_cells {m/mem_reg[3][2]}]  \
  [get_cells {m/mem_reg[3][3]}]  \
  [get_cells {m/mem_reg[3][4]}]  \
  [get_cells {m/mem_reg[3][5]}]  \
  [get_cells {m/mem_reg[3][6]}]  \
  [get_cells {m/mem_reg[3][7]}]  \
  [get_cells {m/mem_reg[4][0]}]  \
  [get_cells {m/mem_reg[4][1]}]  \
  [get_cells {m/mem_reg[4][2]}]  \
  [get_cells {m/mem_reg[4][3]}]  \
  [get_cells {m/mem_reg[4][4]}]  \
  [get_cells {m/mem_reg[4][5]}]  \
  [get_cells {m/mem_reg[4][6]}]  \
  [get_cells {m/mem_reg[4][7]}]  \
  [get_cells {m/mem_reg[5][0]}]  \
  [get_cells {m/mem_reg[5][1]}]  \
  [get_cells {m/mem_reg[5][2]}]  \
  [get_cells {m/mem_reg[5][3]}]  \
  [get_cells {m/mem_reg[5][4]}]  \
  [get_cells {m/mem_reg[5][5]}]  \
  [get_cells {m/mem_reg[5][6]}]  \
  [get_cells {m/mem_reg[5][7]}]  \
  [get_cells {m/mem_reg[6][0]}]  \
  [get_cells {m/mem_reg[6][1]}]  \
  [get_cells {m/mem_reg[6][2]}]  \
  [get_cells {m/mem_reg[6][3]}]  \
  [get_cells {m/mem_reg[6][4]}]  \
  [get_cells {m/mem_reg[6][5]}]  \
  [get_cells {m/mem_reg[6][6]}]  \
  [get_cells {m/mem_reg[6][7]}]  \
  [get_cells {m/mem_reg[7][0]}]  \
  [get_cells {m/mem_reg[7][1]}]  \
  [get_cells {m/mem_reg[7][2]}]  \
  [get_cells {m/mem_reg[7][3]}]  \
  [get_cells {m/mem_reg[7][4]}]  \
  [get_cells {m/mem_reg[7][5]}]  \
  [get_cells {m/mem_reg[7][6]}]  \
  [get_cells {m/mem_reg[7][7]}]  \
  [get_cells {m/mem_reg[8][0]}]  \
  [get_cells {m/mem_reg[8][1]}]  \
  [get_cells {m/mem_reg[8][2]}]  \
  [get_cells {m/mem_reg[8][3]}]  \
  [get_cells {m/mem_reg[8][4]}]  \
  [get_cells {m/mem_reg[8][5]}]  \
  [get_cells {m/mem_reg[8][6]}]  \
  [get_cells {m/mem_reg[8][7]}]  \
  [get_cells {m/mem_reg[9][0]}]  \
  [get_cells {m/mem_reg[9][1]}]  \
  [get_cells {m/mem_reg[9][2]}]  \
  [get_cells {m/mem_reg[9][3]}]  \
  [get_cells {m/mem_reg[9][4]}]  \
  [get_cells {m/mem_reg[9][5]}]  \
  [get_cells {m/mem_reg[9][6]}]  \
  [get_cells {m/mem_reg[9][7]}]  \
  [get_cells {m/mem_reg[10][0]}]  \
  [get_cells {m/mem_reg[10][1]}]  \
  [get_cells {m/mem_reg[10][2]}]  \
  [get_cells {m/mem_reg[10][3]}]  \
  [get_cells {m/mem_reg[10][4]}]  \
  [get_cells {m/mem_reg[10][5]}]  \
  [get_cells {m/mem_reg[10][6]}]  \
  [get_cells {m/mem_reg[10][7]}]  \
  [get_cells {m/mem_reg[11][0]}]  \
  [get_cells {m/mem_reg[11][1]}]  \
  [get_cells {m/mem_reg[11][2]}]  \
  [get_cells {m/mem_reg[11][3]}]  \
  [get_cells {m/mem_reg[11][4]}]  \
  [get_cells {m/mem_reg[11][5]}]  \
  [get_cells {m/mem_reg[11][6]}]  \
  [get_cells {m/mem_reg[11][7]}]  \
  [get_cells {m/mem_reg[12][0]}]  \
  [get_cells {m/mem_reg[12][1]}]  \
  [get_cells {m/mem_reg[12][2]}]  \
  [get_cells {m/mem_reg[12][3]}]  \
  [get_cells {m/mem_reg[12][4]}]  \
  [get_cells {m/mem_reg[12][5]}]  \
  [get_cells {m/mem_reg[12][6]}]  \
  [get_cells {m/mem_reg[12][7]}]  \
  [get_cells {m/mem_reg[13][0]}]  \
  [get_cells {m/mem_reg[13][1]}]  \
  [get_cells {m/mem_reg[13][2]}]  \
  [get_cells {m/mem_reg[13][3]}]  \
  [get_cells {m/mem_reg[13][4]}]  \
  [get_cells {m/mem_reg[13][5]}]  \
  [get_cells {m/mem_reg[13][6]}]  \
  [get_cells {m/mem_reg[13][7]}]  \
  [get_cells {m/mem_reg[14][0]}]  \
  [get_cells {m/mem_reg[14][1]}]  \
  [get_cells {m/mem_reg[14][2]}]  \
  [get_cells {m/mem_reg[14][3]}]  \
  [get_cells {m/mem_reg[14][4]}]  \
  [get_cells {m/mem_reg[14][5]}]  \
  [get_cells {m/mem_reg[14][6]}]  \
  [get_cells {m/mem_reg[14][7]}]  \
  [get_cells {m/mem_reg[15][0]}]  \
  [get_cells {m/mem_reg[15][1]}]  \
  [get_cells {m/mem_reg[15][2]}]  \
  [get_cells {m/mem_reg[15][3]}]  \
  [get_cells {m/mem_reg[15][4]}]  \
  [get_cells {m/mem_reg[15][5]}]  \
  [get_cells {m/mem_reg[15][6]}]  \
  [get_cells {m/mem_reg[15][7]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[3]}]  \
  [get_cells {f/wr_addr_grey_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[1]}]  \
  [get_cells {f/wr_addr_grey_reg[0]}]  \
  [get_cells {e/rd_addr_grey_reg[3]}]  \
  [get_cells {e/rd_addr_grey_reg[2]}]  \
  [get_cells {e/rd_addr_grey_reg[1]}]  \
  [get_cells {e/rd_addr_grey_reg[0]}]  \
  [get_cells wr_sync/rst_sync_reg]  \
  [get_cells wr_sync/rst_sync_reg_reg]  \
  [get_cells rd_sync/rst_sync_reg]  \
  [get_cells rd_sync/rst_sync_reg_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[4]}] ] -to [list \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells f/full_r_reg]  \
  [get_cells {f/wr_addr_bin_r_reg[0]}]  \
  [get_cells {f/wr_addr_bin_r_reg[1]}]  \
  [get_cells {f/wr_addr_bin_r_reg[2]}]  \
  [get_cells {f/wr_addr_bin_r_reg[4]}]  \
  [get_cells {f/wr_addr_bin_r_reg[3]}]  \
  [get_cells e/empty_r_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[0]}]  \
  [get_cells {e/rd_addr_bin_r_reg[1]}]  \
  [get_cells {e/rd_addr_bin_r_reg[2]}]  \
  [get_cells {e/rd_addr_bin_r_reg[3]}]  \
  [get_cells {m/mem_reg[0][0]}]  \
  [get_cells {m/mem_reg[0][1]}]  \
  [get_cells {m/mem_reg[0][2]}]  \
  [get_cells {m/mem_reg[0][3]}]  \
  [get_cells {m/mem_reg[0][4]}]  \
  [get_cells {m/mem_reg[0][5]}]  \
  [get_cells {m/mem_reg[0][6]}]  \
  [get_cells {m/mem_reg[0][7]}]  \
  [get_cells {m/mem_reg[1][0]}]  \
  [get_cells {m/mem_reg[1][1]}]  \
  [get_cells {m/mem_reg[1][2]}]  \
  [get_cells {m/mem_reg[1][3]}]  \
  [get_cells {m/mem_reg[1][4]}]  \
  [get_cells {m/mem_reg[1][5]}]  \
  [get_cells {m/mem_reg[1][6]}]  \
  [get_cells {m/mem_reg[1][7]}]  \
  [get_cells {m/mem_reg[2][0]}]  \
  [get_cells {m/mem_reg[2][1]}]  \
  [get_cells {m/mem_reg[2][2]}]  \
  [get_cells {m/mem_reg[2][3]}]  \
  [get_cells {m/mem_reg[2][4]}]  \
  [get_cells {m/mem_reg[2][5]}]  \
  [get_cells {m/mem_reg[2][6]}]  \
  [get_cells {m/mem_reg[2][7]}]  \
  [get_cells {m/mem_reg[3][0]}]  \
  [get_cells {m/mem_reg[3][1]}]  \
  [get_cells {m/mem_reg[3][2]}]  \
  [get_cells {m/mem_reg[3][3]}]  \
  [get_cells {m/mem_reg[3][4]}]  \
  [get_cells {m/mem_reg[3][5]}]  \
  [get_cells {m/mem_reg[3][6]}]  \
  [get_cells {m/mem_reg[3][7]}]  \
  [get_cells {m/mem_reg[4][0]}]  \
  [get_cells {m/mem_reg[4][1]}]  \
  [get_cells {m/mem_reg[4][2]}]  \
  [get_cells {m/mem_reg[4][3]}]  \
  [get_cells {m/mem_reg[4][4]}]  \
  [get_cells {m/mem_reg[4][5]}]  \
  [get_cells {m/mem_reg[4][6]}]  \
  [get_cells {m/mem_reg[4][7]}]  \
  [get_cells {m/mem_reg[5][0]}]  \
  [get_cells {m/mem_reg[5][1]}]  \
  [get_cells {m/mem_reg[5][2]}]  \
  [get_cells {m/mem_reg[5][3]}]  \
  [get_cells {m/mem_reg[5][4]}]  \
  [get_cells {m/mem_reg[5][5]}]  \
  [get_cells {m/mem_reg[5][6]}]  \
  [get_cells {m/mem_reg[5][7]}]  \
  [get_cells {m/mem_reg[6][0]}]  \
  [get_cells {m/mem_reg[6][1]}]  \
  [get_cells {m/mem_reg[6][2]}]  \
  [get_cells {m/mem_reg[6][3]}]  \
  [get_cells {m/mem_reg[6][4]}]  \
  [get_cells {m/mem_reg[6][5]}]  \
  [get_cells {m/mem_reg[6][6]}]  \
  [get_cells {m/mem_reg[6][7]}]  \
  [get_cells {m/mem_reg[7][0]}]  \
  [get_cells {m/mem_reg[7][1]}]  \
  [get_cells {m/mem_reg[7][2]}]  \
  [get_cells {m/mem_reg[7][3]}]  \
  [get_cells {m/mem_reg[7][4]}]  \
  [get_cells {m/mem_reg[7][5]}]  \
  [get_cells {m/mem_reg[7][6]}]  \
  [get_cells {m/mem_reg[7][7]}]  \
  [get_cells {m/mem_reg[8][0]}]  \
  [get_cells {m/mem_reg[8][1]}]  \
  [get_cells {m/mem_reg[8][2]}]  \
  [get_cells {m/mem_reg[8][3]}]  \
  [get_cells {m/mem_reg[8][4]}]  \
  [get_cells {m/mem_reg[8][5]}]  \
  [get_cells {m/mem_reg[8][6]}]  \
  [get_cells {m/mem_reg[8][7]}]  \
  [get_cells {m/mem_reg[9][0]}]  \
  [get_cells {m/mem_reg[9][1]}]  \
  [get_cells {m/mem_reg[9][2]}]  \
  [get_cells {m/mem_reg[9][3]}]  \
  [get_cells {m/mem_reg[9][4]}]  \
  [get_cells {m/mem_reg[9][5]}]  \
  [get_cells {m/mem_reg[9][6]}]  \
  [get_cells {m/mem_reg[9][7]}]  \
  [get_cells {m/mem_reg[10][0]}]  \
  [get_cells {m/mem_reg[10][1]}]  \
  [get_cells {m/mem_reg[10][2]}]  \
  [get_cells {m/mem_reg[10][3]}]  \
  [get_cells {m/mem_reg[10][4]}]  \
  [get_cells {m/mem_reg[10][5]}]  \
  [get_cells {m/mem_reg[10][6]}]  \
  [get_cells {m/mem_reg[10][7]}]  \
  [get_cells {m/mem_reg[11][0]}]  \
  [get_cells {m/mem_reg[11][1]}]  \
  [get_cells {m/mem_reg[11][2]}]  \
  [get_cells {m/mem_reg[11][3]}]  \
  [get_cells {m/mem_reg[11][4]}]  \
  [get_cells {m/mem_reg[11][5]}]  \
  [get_cells {m/mem_reg[11][6]}]  \
  [get_cells {m/mem_reg[11][7]}]  \
  [get_cells {m/mem_reg[12][0]}]  \
  [get_cells {m/mem_reg[12][1]}]  \
  [get_cells {m/mem_reg[12][2]}]  \
  [get_cells {m/mem_reg[12][3]}]  \
  [get_cells {m/mem_reg[12][4]}]  \
  [get_cells {m/mem_reg[12][5]}]  \
  [get_cells {m/mem_reg[12][6]}]  \
  [get_cells {m/mem_reg[12][7]}]  \
  [get_cells {m/mem_reg[13][0]}]  \
  [get_cells {m/mem_reg[13][1]}]  \
  [get_cells {m/mem_reg[13][2]}]  \
  [get_cells {m/mem_reg[13][3]}]  \
  [get_cells {m/mem_reg[13][4]}]  \
  [get_cells {m/mem_reg[13][5]}]  \
  [get_cells {m/mem_reg[13][6]}]  \
  [get_cells {m/mem_reg[13][7]}]  \
  [get_cells {m/mem_reg[14][0]}]  \
  [get_cells {m/mem_reg[14][1]}]  \
  [get_cells {m/mem_reg[14][2]}]  \
  [get_cells {m/mem_reg[14][3]}]  \
  [get_cells {m/mem_reg[14][4]}]  \
  [get_cells {m/mem_reg[14][5]}]  \
  [get_cells {m/mem_reg[14][6]}]  \
  [get_cells {m/mem_reg[14][7]}]  \
  [get_cells {m/mem_reg[15][0]}]  \
  [get_cells {m/mem_reg[15][1]}]  \
  [get_cells {m/mem_reg[15][2]}]  \
  [get_cells {m/mem_reg[15][3]}]  \
  [get_cells {m/mem_reg[15][4]}]  \
  [get_cells {m/mem_reg[15][5]}]  \
  [get_cells {m/mem_reg[15][6]}]  \
  [get_cells {m/mem_reg[15][7]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {wr_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_2/rd_data_reg[2]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[0]}]  \
  [get_cells {rd_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[4]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[3]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[1]}]  \
  [get_cells {wr_addr_sync/dff_1/rd_data_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[3]}]  \
  [get_cells {f/wr_addr_grey_reg[2]}]  \
  [get_cells {f/wr_addr_grey_reg[1]}]  \
  [get_cells {f/wr_addr_grey_reg[0]}]  \
  [get_cells {e/rd_addr_grey_reg[3]}]  \
  [get_cells {e/rd_addr_grey_reg[2]}]  \
  [get_cells {e/rd_addr_grey_reg[1]}]  \
  [get_cells {e/rd_addr_grey_reg[0]}]  \
  [get_cells wr_sync/rst_sync_reg]  \
  [get_cells wr_sync/rst_sync_reg_reg]  \
  [get_cells rd_sync/rst_sync_reg]  \
  [get_cells rd_sync/rst_sync_reg_reg]  \
  [get_cells {e/rd_addr_bin_r_reg[4]}] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports wr_clk_pad]  \
  [get_ports rd_clk_pad]  \
  [get_ports wr_en_pad]  \
  [get_ports rd_en_pad]  \
  [get_ports wr_rst_pad]  \
  [get_ports rd_rst_pad]  \
  [get_ports {wr_data_pad[7]}]  \
  [get_ports {wr_data_pad[6]}]  \
  [get_ports {wr_data_pad[5]}]  \
  [get_ports {wr_data_pad[4]}]  \
  [get_ports {wr_data_pad[3]}]  \
  [get_ports {wr_data_pad[2]}]  \
  [get_ports {wr_data_pad[1]}]  \
  [get_ports {wr_data_pad[0]}] ] -to [list \
  [get_ports {rd_data_pad[7]}]  \
  [get_ports {rd_data_pad[6]}]  \
  [get_ports {rd_data_pad[5]}]  \
  [get_ports {rd_data_pad[4]}]  \
  [get_ports {rd_data_pad[3]}]  \
  [get_ports {rd_data_pad[2]}]  \
  [get_ports {rd_data_pad[1]}]  \
  [get_ports {rd_data_pad[0]}]  \
  [get_ports empty_pad]  \
  [get_ports full_pad] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports wr_en_pad]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports wr_en_pad]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[7]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[6]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[5]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[4]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[3]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[2]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[1]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -max 7.75 [get_ports {wr_data_pad[0]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[7]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[6]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[5]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[4]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[3]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[2]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[1]}]
set_input_delay -clock [get_clocks wr_vir_clk_i] -add_delay -min 2.25 [get_ports {wr_data_pad[0]}]
set_input_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 7.75 [get_ports rd_en_pad]
set_input_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.25 [get_ports rd_en_pad]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[7]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[6]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[5]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[4]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[3]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[2]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[1]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports {rd_data_pad[0]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[7]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[6]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[5]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[4]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[3]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[2]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[1]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports {rd_data_pad[0]}]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports full_pad]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports full_pad]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -max 3.931 [get_ports empty_pad]
set_output_delay -clock [get_clocks rd_vir_clk_i] -add_delay -min 2.628 [get_ports empty_pad]
set_input_transition -min 1.0 [get_ports wr_en_pad]
set_input_transition -max 2.5 [get_ports wr_en_pad]
set_input_transition -min 1.0 [get_ports rd_en_pad]
set_input_transition -max 2.5 [get_ports rd_en_pad]
set_input_transition -min 1.0 [get_ports wr_rst_pad]
set_input_transition -max 2.5 [get_ports wr_rst_pad]
set_input_transition -min 1.0 [get_ports rd_rst_pad]
set_input_transition -max 2.5 [get_ports rd_rst_pad]
set_input_transition -min 1.0 [get_ports {wr_data_pad[7]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[7]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[6]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[6]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[5]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[5]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[4]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[4]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[3]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[3]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[2]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[2]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[1]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[1]}]
set_input_transition -min 1.0 [get_ports {wr_data_pad[0]}]
set_input_transition -max 2.5 [get_ports {wr_data_pad[0]}]
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb4]
set_clock_latency -source -max -late 1.25 [get_clocks write_clk]
set_clock_latency -source -max -early 1.0 [get_clocks write_clk]
set_clock_latency -source -min -early 1.25 [get_clocks write_clk]
set_clock_latency -source -min -late 0.75 [get_clocks write_clk]
set_clock_uncertainty -setup 0.375 [get_clocks write_clk]
set_clock_uncertainty -hold 0.375 [get_clocks write_clk]
set_clock_latency -source -max -late 1.25 [get_clocks read_clk]
set_clock_latency -source -max -early 1.0 [get_clocks read_clk]
set_clock_latency -source -min -early 1.25 [get_clocks read_clk]
set_clock_latency -source -min -late 0.75 [get_clocks read_clk]
set_clock_uncertainty -setup 0.75 [get_clocks read_clk]
set_clock_uncertainty -hold 0.75 [get_clocks read_clk]
