set_clock_latency -source -early -min  1.25 [get_clocks {write_clk}]
set_clock_latency -source -early -max  1 [get_clocks {write_clk}]
set_clock_latency -source -late -min  0.75 [get_clocks {write_clk}]
set_clock_latency -source -late -max  1.25 [get_clocks {write_clk}]
set_clock_latency -source -early -min  1.25 [get_clocks {read_clk}]
set_clock_latency -source -early -max  1 [get_clocks {read_clk}]
set_clock_latency -source -late -min  0.75 [get_clocks {read_clk}]
set_clock_latency -source -late -max  1.25 [get_clocks {read_clk}]
set_clock_latency -source -early -min -rise  0.281185 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -min -fall  -0.267337 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -max -rise  0.0311854 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -max -fall  -0.517337 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -min -rise  -0.218815 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -min -fall  -0.767337 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -max -rise  0.281185 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -max -fall  -0.267337 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -min -rise  0.114687 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -early -min -fall  -0.426525 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -early -max -rise  -0.135313 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -early -max -fall  -0.676525 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -min -rise  -0.385313 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -min -fall  -0.926525 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -max -rise  0.114687 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -max -fall  -0.426525 [get_ports {wr_clk_pad}] -clock write_clk 
