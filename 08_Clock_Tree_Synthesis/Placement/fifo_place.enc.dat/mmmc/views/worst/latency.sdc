set_clock_latency -source -early -min  1.25 [get_clocks {write_clk}]
set_clock_latency -source -early -max  1 [get_clocks {write_clk}]
set_clock_latency -source -late -min  0.75 [get_clocks {write_clk}]
set_clock_latency -source -late -max  1.25 [get_clocks {write_clk}]
set_clock_latency -source -early -min  1.25 [get_clocks {read_clk}]
set_clock_latency -source -early -max  1 [get_clocks {read_clk}]
set_clock_latency -source -late -min  0.75 [get_clocks {read_clk}]
set_clock_latency -source -late -max  1.25 [get_clocks {read_clk}]
set_clock_latency -source -early -min -rise  0.579111 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -min -fall  -0.493781 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -max -rise  0.329111 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -max -fall  -0.743781 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -min -rise  0.079111 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -min -fall  -0.993781 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -max -rise  0.579111 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -late -max -fall  -0.493781 [get_ports {rd_clk_pad}] -clock read_clk 
set_clock_latency -source -early -min -rise  0.386622 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -early -min -fall  -0.694292 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -early -max -rise  0.136622 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -early -max -fall  -0.944292 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -min -rise  -0.113378 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -min -fall  -1.19429 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -max -rise  0.386622 [get_ports {wr_clk_pad}] -clock write_clk 
set_clock_latency -source -late -max -fall  -0.694292 [get_ports {wr_clk_pad}] -clock write_clk 
