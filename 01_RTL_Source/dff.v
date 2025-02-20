module dff #(
    ADDR_SIZE = 4
) (
    input clk,
    input rst,
    input [ADDR_SIZE:0] wr_data,
    output reg [ADDR_SIZE:0] rd_data
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        rd_data <= 0;
    end else begin
        rd_data <= wr_data;
    end
end

endmodule