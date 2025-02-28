
module mips_multicycle
(
  input clk,
  input rst
);

  logic [31:0] pc       ='0;
  logic [31:0] pc_next  ='0;
  logic [31:0] instr    ='0;
  logic [31:0] sign_imm    ;
  logic pc_en           ='0;
  logic ir_write        ='0;

  logic  [31:0] mem_rd_addr_0  ;
  logic         mem_rd_en_0    ;
  logic  [31:0] mem_rd_data_0  ;
  logic  [31:0] mem_rd_addr_1  ;
  logic         mem_rd_en_1    ;
  logic  [31:0] mem_rd_data_1  ;
  logic  [31:0] mem_wr_addr    ;
  logic         mem_wr_en      ;
  logic  [31:0] mem_wr_data    ;

  logic  [4:0]  rf_address_rd_0;
  logic  [4:0]  rf_address_rd_1;
  logic  [4:0]  rf_address_wr  ;
  logic  [31:0] rf_wr_data     ;
  logic         rf_wr_en       ;
  logic  [31:0] rf_rd_data_0   ;
  logic  [31:0] rf_rd_data_0_q ;
  logic  [31:0] rf_rd_data_1   ;

  assign mem_rd_addr_1   = pc;
  assign mem_rd_en_1     = 1'b1; 
  assign rf_address_rd_0 = instr[25:21];
  assign sign_imm = { instr[15] ? 16'hffff: 16'h0000, instr[15:0] };

  always @(posedge clk)
  begin
    rf_rd_data_0_q <= rf_rd_data_0;
    if(pc_en)
    begin
      pc <= pc_next;
    end
    if(ir_write)
    begin
      instr <= mem_rd_data_1;
    end
  end

  register_file u_reg_file
  (
    .clk           (clk            ),
    .rst           (rst            ),
    .address_rd_0  (rf_address_rd_0),
    .address_rd_1  (rf_address_rd_1),
    .address_wr    (rf_address_wr  ),
    .wr_data       (rf_wr_data     ),
    .wr_en         (rf_wr_en       ),
    .rd_data_0     (rf_rd_data_0   ),
    .rd_data_1     (rf_rd_data_1   )
  );

  memory u_inst_data_memory(
    .clk        (clk          ),
    .rd_addr_0  (mem_rd_addr_0),
    .rd_en_0    (mem_rd_en_0  ),
    .rd_data_0  (mem_rd_data_0),
    .rd_addr_1  (mem_rd_addr_1),
    .rd_en_1    (mem_rd_en_1  ),
    .rd_data_1  (mem_rd_data_1),
    .wr_addr    (mem_wr_addr  ),
    .wr_en      (mem_wr_en    ),
    .wr_data    (mem_wr_data  )
  );


endmodule