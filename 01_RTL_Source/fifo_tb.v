`timescale 1ns / 1ps

module tb_fifo_top;

    // Parameters
    parameter ADDR_SIZE = 4;
    parameter DATA_SIZE = 8;
    parameter DEPTH = 16;

    // Inputs
    reg wr_clk;
    reg rd_clk;
    reg wr_en;
    reg rd_en;
    reg wr_rst;
    reg rd_rst;
    reg [DATA_SIZE-1:0] wr_data;

    // Outputs
    wire [DATA_SIZE-1:0] rd_data;
    wire empty;
    wire full;

    // Internal wires for monitoring
    wire [ADDR_SIZE:0] wr_addr_grey_sync, rd_addr_grey_sync;
    wire [ADDR_SIZE:0] wr_addr_grey, rd_addr_grey;
    wire [ADDR_SIZE-1:0] wr_addr, rd_addr;
    wire wr_rst_sync, rd_rst_sync;

    // Instantiate the FIFO module
    fifo_top #(
        .ADDR_SIZE(ADDR_SIZE),
        .DATA_SIZE(DATA_SIZE),
        .DEPTH(DEPTH)
    ) uut (
        .wr_clk(wr_clk),
        .rd_clk(rd_clk),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .wr_rst(wr_rst),
        .rd_rst(rd_rst),
        .wr_data(wr_data),
        .rd_data(rd_data),
        .empty(empty),
        .full(full)
    );

    // Assign internal wires for monitoring
    assign wr_addr_grey_sync = uut.wr_addr_grey_sync;
    assign rd_addr_grey_sync = uut.rd_addr_grey_sync;
    assign wr_addr_grey = uut.wr_addr_grey;
    assign rd_addr_grey = uut.rd_addr_grey;
    assign wr_addr = uut.wr_addr;
    assign rd_addr = uut.rd_addr;
    assign wr_rst_sync = uut.wr_rst_sync;
    assign rd_rst_sync = uut.rd_rst_sync;

    // Clock generation
    initial begin
        wr_clk = 0;
        forever #5 wr_clk = ~wr_clk;
    end

    initial begin
        rd_clk = 0;
        forever #7 rd_clk = ~rd_clk;
    end

    // Test sequence
    initial begin
        // Initialize inputs
        wr_rst = 1;
        rd_rst = 1;
        wr_en = 0;
        rd_en = 0;
        wr_data = 0;

        // Apply reset
        #10;
        wr_rst = 0;
        rd_rst = 0;

        #30;
        wr_en = 1;
        wr_data = 8'hA5; // Random value 1
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h3C; // Random value 2
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h7E; // Random value 3
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h1F; // Random value 4
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'hD4; // Random value 5
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h9B; // Random value 6
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'hE2; // Random value 7
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h6A; // Random value 8
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h4F; // Random value 9
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'hB1; // Random value 10
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'hC3; // Random value 11
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h8D; // Random value 12
        #10;
        wr_en = 0;
                // Read 2 data entries from FIFO
        #10;
        rd_en = 1;
        #10;
        rd_en = 0;
        #10;
        rd_en = 1;
        #10;
        rd_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'hF7; // Random value 13
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h2E; // Random value 14
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h5C; // Random value 15
        #10;
        wr_en = 0;
        #10;
        wr_en = 1;
        wr_data = 8'h2E; // Random value 14
        #10;
        wr_en = 0;


        // Check full and empty flags
        #10;
        $display("Full: %b, Empty: %b", full, empty);

        // Finish simulation
        #100;
        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t, wr_data=%0h, rd_data=%0h, full=%b, empty=%b, wr_addr_grey_sync=%0h, rd_addr_grey_sync=%0h, wr_addr_grey=%0h, rd_addr_grey=%0h, wr_addr=%0h, rd_addr=%0h, wr_rst_sync=%b, rd_rst_sync=%b",
                 $time, wr_data, rd_data, full, empty, wr_addr_grey_sync, rd_addr_grey_sync, wr_addr_grey, rd_addr_grey, wr_addr, rd_addr, wr_rst_sync, rd_rst_sync);
    end

endmodule