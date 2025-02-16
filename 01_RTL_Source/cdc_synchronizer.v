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
