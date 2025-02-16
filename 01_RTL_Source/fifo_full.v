module fifo_full #(
    ADDR_SIZE = 4
) (
    input wr_clk,
    input wr_en,
    input wr_rst,
    input [ADDR_SIZE:0] rd_ptr_addr_sync,
    output reg full,
    output reg [ADDR_SIZE:0] wr_addr_grey,
    output  [ADDR_SIZE-1:0] wr_addr_bin
);

reg [ADDR_SIZE:0] wr_addr_bin_r;
reg full_r;

wire full_n;

wire [ADDR_SIZE:0] wr_addr_grey_next;

wire [ADDR_SIZE:0] wr_addr_binary_next;

always @(posedge wr_clk or posedge wr_rst) begin
    if(wr_rst) begin
        wr_addr_bin_r <= 0;
        wr_addr_grey <= 0;
    end
    else begin
        wr_addr_bin_r <= wr_addr_binary_next;
        wr_addr_grey <= wr_addr_grey_next;
    end
end

assign wr_addr_bin = wr_addr_bin_r[ADDR_SIZE-1:0]; // write pointer

assign wr_addr_binary_next = {wr_addr_bin_r+ (!full_r & wr_en) };

assign wr_addr_grey_next = (wr_addr_binary_next >>1) ^ wr_addr_binary_next;

assign full_n = (wr_addr_grey_next[ADDR_SIZE] == !rd_ptr_addr_sync[ADDR_SIZE])&&  //full condition
                (wr_addr_grey_next[ADDR_SIZE-1] == !rd_ptr_addr_sync[ADDR_SIZE-1])&&
                (wr_addr_grey_next[ADDR_SIZE-2:0] == rd_ptr_addr_sync[ADDR_SIZE-2:0]);

always @(posedge wr_clk or posedge wr_rst) begin
    if(wr_rst) begin
        full <= 0;
    end
    else begin
        full <= full_n;
    end
end
always @(posedge wr_clk or posedge wr_rst) begin
    if (wr_rst) begin
        full_r <= 0;
    end
    else begin
        full_r <= full_n;
    end
end
endmodule