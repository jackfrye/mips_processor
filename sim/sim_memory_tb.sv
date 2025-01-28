`timescale 1ns/1ns

module sim_memory_tb();

  logic clk;
  
  always begin
    clk=1; #2.5ns; clk=0; #2.5ns;
  end
  
  logic [31:0] rd_addr_0  ='0;
  logic        rd_en_0    ='0;
  logic [31:0] rd_data_0     ;
  logic [31:0] rd_addr_1  ='0;
  logic        rd_en_1    ='0;
  logic [31:0] rd_data_1     ;
  logic [31:0] wr_addr    ='0;
  logic        wr_en      ='0;
  logic [31:0] wr_data    ='0;
  
  memory DUT(
    .clk        (clk       ),
    .rd_addr_0  (rd_addr_0 ),
    .rd_en_0    (rd_en_0   ),
    .rd_data_0  (rd_data_0 ),
    .rd_addr_1  (rd_addr_1 ),
    .rd_en_1    (rd_en_1   ),
    .rd_data_1  (rd_data_1 ),
    .wr_addr    (wr_addr   ),
    .wr_en      (wr_en     ),
    .wr_data    (wr_data   )
  );

  initial begin
    #5ns
	 rd_addr_0 = 32'h00000000;
	 rd_en_0   = 1'b1;
	 #5ns
	 rd_addr_0 = 32'h00000000;
	 rd_en_0   = 1'b0;	 
	 #5ns
	 wr_addr   = 32'h00000004;
	 wr_data   = 32'hdeadbeef;	
	 wr_en     = 1'b1;
	 #5ns
	 wr_en     = 1'b0;
	 #5ns
	 rd_addr_1 = 32'h00000004;
	 rd_en_1   = 1'b1;
	 #5ns
	 rd_en_1   = 1'b0;	 

	 
	 
  end 
  
endmodule 