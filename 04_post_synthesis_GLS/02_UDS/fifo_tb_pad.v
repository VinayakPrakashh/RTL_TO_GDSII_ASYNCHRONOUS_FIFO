`timescale 1ns/1ps
module fifo_tb()                                                   ;
parameter DATA_SIZE   = 8                                           ;
parameter ADDR_SIZE   = 4                                           ;
parameter DEPTH  = 16                                          ;

//register declaration
reg                    i_wr_clk                                    ;
reg                    i_wr_rst_n                                  ;
reg  [DATA_SIZE-1 : 0]  i_wr_data                                   ; 
reg                    i_rd_clk                                    ;
reg                    i_rd_rst_n                                  ;
reg                    rd_entmp                                    ;
reg                    wr_entmp                                    ;
reg  [DATA_SIZE-1 : 0]  rd_datatmp                                  ;
reg  [ADDR_SIZE-1 : 0]  wr_addr_tb                                  ;
reg  [ADDR_SIZE-1 : 0]  rd_addr_tb                                  ;
reg  [DATA_SIZE-1 : 0]  rd_data_tb                                  ;
reg                    wr_sync_rst_reg                             ;
reg                    rd_sync_rst_reg                             ;
reg                    o_wr_sync_rst                               ;
reg                    o_rd_sync_rst                               ;

//wire delaclaration
wire                   i_rd_en                                     ;
wire                   i_wr_en                                     ;
wire                   o_full                                      ;
wire                   o_empty                                     ;
wire [DATA_SIZE-1 : 0]  o_rd_data                                   ;

// tb memory for checking functionality
reg  [DATA_SIZE-1 : 0]  mem_tb [DEPTH -1 : 0]                   ;




// instantiation of design under test
fifo_top  fifo_inst(  .wr_clk_pad(i_wr_clk)                          ,   // input write clock 
                      .wr_rst_pad(i_wr_rst_n)                      ,   // input active low write reset
                      .wr_en_pad(i_wr_en)                            ,   // input write enable
                      .wr_data_pad(i_wr_data)                        ,   // input write data
                      .rd_clk_pad(i_rd_clk)                          ,   // input read clock
                      .rd_rst_pad(i_rd_rst_n)                      ,   // input active low read reset
                      .rd_en_pad(i_rd_en)                            ,   // input read enable
                      .rd_data_pad(o_rd_data)                        ,   // output read data
                      .full_pad(o_full)                              ,   // full flag
                      .empty_pad(o_empty)                                // empty flag
               )                                                   ;



// write clock genaration logic
initial
begin
   i_wr_clk = 1'b0                                                 ;  // initialize write clock low
forever
#11 i_wr_clk = ~i_wr_clk                                           ;  // toggling of write clock
end

// read clock generation logic 
initial
begin
   i_rd_clk = 1'b0                                                 ;   // initialize read clock low
forever
#7 i_rd_clk = ~i_rd_clk                                            ;   // toggling of read clock
end

// write reset generation logic 
initial
begin
#10   i_wr_rst_n = 1'b0                                            ;   // initialize write reset low
#30   i_wr_rst_n = 1'b1                                            ;
end

//read reset generation logic
initial
begin
#10   i_rd_rst_n = 1'b0                                            ;   // initialize read reset low
#50   i_rd_rst_n = 1'b1                                            ;
end

//*******************************************************************************************
//The always block given below will synchronize write reset using 2 D-FF synchronizer Scheme
//*******************************************************************************************
always @(posedge i_wr_clk or negedge i_wr_rst_n)
begin
   if (!i_wr_rst_n)
   begin
      wr_sync_rst_reg         <= 1'b0                              ;   // Assertion of write reset 
      o_wr_sync_rst           <= 1'b0                              ;
   end
   else 
   begin
      wr_sync_rst_reg         <= 1'b1                              ;   // Deassertion of write reset
      o_wr_sync_rst           <= wr_sync_rst_reg                   ; 
   end
end

//*******************************************************************************************
//The always block given below will synchronize read reset using 2 D-FF synchronizer Scheme
//*******************************************************************************************
always @(posedge i_rd_clk or negedge i_rd_rst_n)
begin
   if (!i_rd_rst_n)
   begin
      rd_sync_rst_reg         <= 1'b0                              ;   // Assertion of read reset
      o_rd_sync_rst           <= 1'b0                              ;
   end
   else 
   begin
      rd_sync_rst_reg         <= 1'b1                              ;   // Deassertion of read reset
      o_rd_sync_rst           <= rd_sync_rst_reg                   ; 
   end
end


//write enable genaration logic
assign i_wr_en = (wr_entmp & (!o_full) )                           ;

//***********************************************************************************************************
//  Initialization of random data and write enable as high at posegde of write clock depending on full flag
//***********************************************************************************************************
always @ (posedge i_wr_clk or negedge o_wr_sync_rst)
begin
   if (! o_wr_sync_rst)
   begin
      wr_entmp                <=  1'b0                             ;   // Disable the write enable
   end
   else if (!o_full)
   begin
      i_wr_data               <=  $random                          ;   // Random data to FIFO
      wr_entmp                <=  1'b1                             ;   // Enbaling the FIFO write
   end 
   else 
   begin 
      wr_entmp                <=  1'b0                             ;   // Disable the write enable- FIFO is full
   end
end

//***********************************************************************************************************
// In this always block, we are initializing the TB RAM address at active low write reset.
// Write operation in TB RAM and TB RAM address starts incrementing only when write enable is active high.
//***********************************************************************************************************
always @ (posedge i_wr_clk or negedge o_wr_sync_rst)
begin
   if (! o_wr_sync_rst)
      wr_addr_tb              <=  4'b0                             ;   // TB RAM address pointer initial value
   else
   begin
      if (i_wr_en == 1'b1)
      begin
          mem_tb[wr_addr_tb]  <=  i_wr_data                        ;   // Writing Data to TB RAM
          wr_addr_tb          <=  wr_addr_tb + 1'b1                ;   // TB RAM address increment
      end
   end
end

// Read Enable Generation logic
assign i_rd_en = ( rd_entmp & (!o_empty) )                         ;

//************************************************************************************************************
// Enables the FIFO read operation and getting the read enable temporary signal based on read reset and empty flag
//***********************************************************************************************************
always @ (posedge i_rd_clk or negedge o_rd_sync_rst)
begin
   rd_datatmp                 <= o_rd_data                         ;
   if (! o_rd_sync_rst)
   begin
      rd_entmp                <=  1'b0                             ;   // READ Enable is disbaled
   end
   else if (!o_empty)
   begin
      rd_entmp                <=  1'b1                             ;   // READ enable to FIFO
   end
   else 
   begin
      rd_entmp                <=  1'b0                             ;
   end
end
 
// **********************************************************************************************************
//   Read the Data from TB RAM based on Read Enable signal to FIFO
// **********************************************************************************************************
always @ (posedge i_rd_clk or negedge o_rd_sync_rst)
begin
  if (!o_rd_sync_rst)
      rd_addr_tb              <=  4'b0                             ;   // TB RAM address pointer initial value
   else
   begin
      rd_data_tb              <=  mem_tb[rd_addr_tb]               ;   // Writing in a TB RAM
      if (i_rd_en == 1'b1)
         rd_addr_tb           <=  rd_addr_tb + 1'b1                ;   // Incrementing the address of TB RAM
   end
end

// **********************************************************************************************************
//   Output Data from design comparison with Reference Data from TB RAM
// **********************************************************************************************************
always @ (posedge i_rd_clk)
begin
   if (i_rd_en ==1'b1)
   begin
      if (rd_data_tb  == rd_datatmp)
      begin          
         $display ("[%t] FIFO OUT : %h TB RAM OUT = %h ----Matched---", $time(), rd_datatmp, rd_data_tb)      ;
      end
      else
      begin
         $display ("[%t] FIFO OUT : %h TB RAM OUT = %h ****FAILED****", $time(), rd_datatmp, rd_data_tb)      ; 
      end            
   end
end
 

endmodule 
