
module memory(
    input         clk        ,
    input  [31:0] rd_addr_0  ,
    input         rd_en_0    ,
    output [31:0] rd_data_0  ,
    input  [31:0] rd_addr_1  ,
    input         rd_en_1    ,
    output [31:0] rd_data_1  ,
    input  [31:0] wr_addr    ,
    input         wr_en      ,
    input  [31:0] wr_data 
);

   logic  [12:0] address_a;
   logic         rd_en_0_int;
	
	assign address_a = wr_en ? wr_addr[12:0] : rd_addr_0[12:0];
	assign rd_en_0_int = wr_en ? '0: rd_en_0;
  dp_ram RAM (
  	.address_a  (address_a  ),
  	.address_b  (rd_addr_1  ),
  	.clock      (clk        ),
  	.data_a     (wr_data    ),
  	.data_b     ('0         ),
  	.rden_a     (rd_en_0_int),
  	.rden_b     (rd_en_1    ),
  	.wren_a     (wr_en      ),
  	.wren_b     ('0         ),
  	.q_a        (rd_data_0  ),
  	.q_b        (rd_data_1  )
  );

endmodule