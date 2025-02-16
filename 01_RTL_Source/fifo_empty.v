module fifo_empty #(
    ADDR_SIZE = 4
) (
    input rd_clk,
    input rd_en,
    input rd_rst,
    input [ADDR_SIZE:0] wr_ptr_addr_sync,
    output reg empty,
    output reg [ADDR_SIZE:0] rd_addr_grey,
    output  [ADDR_SIZE-1:0] rd_addr_bin
);
    
reg [ADDR_SIZE:0] rd_addr_bin_r;
reg empty_r;

wire empty_n;
wire [ADDR_SIZE:0] rd_addr_grey_next, rd_addr_bin_next;

always @(posedge rd_clk or posedge rd_rst) begin
    if(rd_rst) begin
        rd_addr_bin_r <= 0;
        rd_addr_grey <= 0;
    end
    else begin
        rd_addr_bin_r <= rd_addr_bin_next;
        rd_addr_grey <= rd_addr_grey_next;
    end
end

assign rd_addr_bin = rd_addr_bin_r[ADDR_SIZE-1:0]; // read pointer

assign rd_addr_bin_next = {rd_addr_bin_r+(!empty_r & rd_en)};

assign rd_addr_grey_next = (rd_addr_bin_next >>1) ^ rd_addr_bin_next;

assign empty_n = (rd_addr_grey_next == wr_ptr_addr_sync); //empty condition

always @(posedge rd_clk or posedge rd_rst) begin
    if(rd_rst) begin
        empty <= 1;
    end
    else begin
        empty <= empty_n;
    end
end
always @(posedge rd_clk or posedge rd_rst) begin
    if (rd_rst) begin
        empty_r <= 1;
    end
    else begin
        empty_r <= empty_n;
    end
end
endmodule