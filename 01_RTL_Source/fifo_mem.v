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
    input rd_en,
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