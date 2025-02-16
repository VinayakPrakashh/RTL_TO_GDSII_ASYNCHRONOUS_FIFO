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

module fifo_memory #(
    ADDR_SIZE = 4,
    DATA_SIZE = 8,
    DEPTH = 16
) (
    input clk,
    input rst,
    input wr_en,
    input full,
    input [ADDR_SIZE-1:0] wr_addr,
    input [ADDR_SIZE-1:0] rd_addr,
    input [DATA_SIZE-1:0] wr_data,
    output [DATA_SIZE-1:0] rd_data
);

reg [DATA_SIZE-1:0] mem [DEPTH-1:0]; //memory array

wire wr_en_n;

assign wr_en_n = ~full & wr_en; //write enable signal

always @(posedge clk or posedge rst) begin
    if(rst) begin
        mem[0] <= 0;
        mem[1] <= 0;
        mem[2] <= 0;
        mem[3] <= 0;
        mem[4] <= 0;
        mem[5] <= 0;
        mem[6] <= 0;
        mem[7] <= 0;
        mem[8] <= 0;
        mem[9] <= 0;
        mem[10] <= 0;
        mem[11] <= 0;
        mem[12] <= 0;
        mem[13] <= 0;
        mem[14] <= 0;
        mem[15] <= 0;
    end else begin
        if(wr_en) begin
            mem[wr_addr] <= wr_data; //synchronous write
        end
    end
end

assign rd_data = mem[rd_addr]; //asynchronous read

endmodule

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

assign wr_addr_binary_next = {wr_addr_bin_r+(!full_r & wr_en)};

assign wr_addr_grey_next = (wr_addr_binary_next >>1) ^ wr_addr_binary_next;

assign full_n         = ((wr_addr_grey_next[ADDR_SIZE]     != rd_ptr_addr_sync[ADDR_SIZE] ) &&
                         (wr_addr_grey_next[ADDR_SIZE-1]   != rd_ptr_addr_sync[ADDR_SIZE-1]) &&
                         (wr_addr_grey_next[ADDR_SIZE-2:0] == rd_ptr_addr_sync[ADDR_SIZE-2:0]))       ;                   
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

module dff #(
    ADDR_SIZE = 4
) (
    input clk,
    input rst,
    input [ADDR_SIZE:0] wr_data,
    output reg [ADDR_SIZE:0] rd_data
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        rd_data <= 0;
    end else begin
        rd_data <= wr_data;
    end
end

endmodule

module cdc_synchronizer #(
    ADDR_SIZE = 4
) (
    input clk,
    input rst,
    input [ADDR_SIZE:0] in_data,
    output [ADDR_SIZE:0] out_data
);

wire [ADDR_SIZE:0] in_data_n;

dff dff_1(clk, rst, in_data, in_data_n);
dff dff_2(clk, rst, in_data_n, out_data);
endmodule

module reset_sync(
    input clk,
    input rst,
    output reg rst_sync
);

reg rst_sync_reg;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        rst_sync_reg <= 1'b1;
        rst_sync <= 1'b1;

    end else begin
        rst_sync_reg <= 1'b0;
        rst_sync <= rst_sync_reg;
    end
end
endmodule