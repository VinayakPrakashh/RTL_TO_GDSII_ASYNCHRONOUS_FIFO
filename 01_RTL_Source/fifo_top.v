module fifo_top #(
    ADDR_SIZE = 4,
    DATA_SIZE = 8,
    DEPTH = 16
) (
    input wr_clk,
    input rd_clk,
    input wr_en,
    input rd_en,
    input wr_rst,
    input rd_rst,
    input [DATA_SIZE-1:0] wr_data,
    output [DATA_SIZE-1:0] rd_data,
    output  empty,
    output  full
);
    
wire [ADDR_SIZE:0] wr_addr_grey_sync, rd_addr_grey_sync;
wire [ADDR_SIZE:0] wr_addr_grey, rd_addr_grey;
wire [ADDR_SIZE-1:0] wr_addr, rd_addr;
wire wr_rst_sync, rd_rst_sync;

reset_sync wr_sync(wr_clk, wr_rst, wr_rst_sync);
reset_sync rd_sync(rd_clk, rd_rst, rd_rst_sync);

fifo_full #(ADDR_SIZE) f(wr_clk, wr_en, wr_rst_sync, rd_addr_grey_sync, full, wr_addr_grey, wr_addr);
fifo_empty #(ADDR_SIZE) e(rd_clk, rd_en, rd_rst_sync, wr_addr_grey_sync, empty, rd_addr_grey, rd_addr);

cdc_synchronizer #(ADDR_SIZE) wr_addr_sync(wr_clk, wr_rst_sync, rd_addr_grey, rd_addr_grey_sync);
cdc_synchronizer #(ADDR_SIZE) rd_addr_sync(rd_clk, rd_rst_sync, wr_addr_grey, wr_addr_grey_sync);

fifo_memory #(ADDR_SIZE, DATA_SIZE, DEPTH) m(wr_clk, wr_rst_sync, wr_en, full, wr_addr, rd_addr, wr_data, rd_data);

endmodule
