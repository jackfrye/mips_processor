
module register_file
(
    input         clk           ,
    input         rst           ,
    input  [4:0]  address_rd_0  ,
    input  [4:0]  address_rd_1  ,
    input  [4:0]  address_wr    ,
    input  [31:0] wr_data       ,
    input         wr_en         ,
    output [31:0] rd_data_0     ,
    output [31:0] rd_data_1
);

  logic [31:0][31:0] regs;

  always_comb
  begin
    case(address_rd_0)
      5'h00: rd_data_0 <= regs[0]; 
      5'h01: rd_data_0 <= regs[1];
      5'h02: rd_data_0 <= regs[2];
      5'h03: rd_data_0 <= regs[3];
      5'h04: rd_data_0 <= regs[4];
      5'h05: rd_data_0 <= regs[5];
      5'h06: rd_data_0 <= regs[6];
      5'h07: rd_data_0 <= regs[7];
      5'h08: rd_data_0 <= regs[8];
      5'h09: rd_data_0 <= regs[9];
      5'h0a: rd_data_0 <= regs[10];
      5'h0b: rd_data_0 <= regs[11];
      5'h0c: rd_data_0 <= regs[12];
      5'h0d: rd_data_0 <= regs[13];
      5'h0e: rd_data_0 <= regs[14];
      5'h0f: rd_data_0 <= regs[15];
      5'h10: rd_data_0 <= regs[16];
      5'h11: rd_data_0 <= regs[17];
      5'h12: rd_data_0 <= regs[18];
      5'h13: rd_data_0 <= regs[19];
      5'h14: rd_data_0 <= regs[20];
      5'h15: rd_data_0 <= regs[21];
      5'h16: rd_data_0 <= regs[22];
      5'h17: rd_data_0 <= regs[23];
      5'h18: rd_data_0 <= regs[24];
      5'h19: rd_data_0 <= regs[25];
      5'h1a: rd_data_0 <= regs[26];
      5'h1b: rd_data_0 <= regs[27];
      5'h1c: rd_data_0 <= regs[28];
      5'h1d: rd_data_0 <= regs[29];
      5'h1e: rd_data_0 <= regs[30];
      5'h1f: rd_data_0 <= regs[31];
    endcase  

    case(address_rd_1)
      5'h00: rd_data_1 <= regs[0]; 
      5'h01: rd_data_1 <= regs[1];
      5'h02: rd_data_1 <= regs[2];
      5'h03: rd_data_1 <= regs[3];
      5'h04: rd_data_1 <= regs[4];
      5'h05: rd_data_1 <= regs[5];
      5'h06: rd_data_1 <= regs[6];
      5'h07: rd_data_1 <= regs[7];
      5'h08: rd_data_1 <= regs[8];
      5'h09: rd_data_1 <= regs[9];
      5'h0a: rd_data_1 <= regs[10];
      5'h0b: rd_data_1 <= regs[11];
      5'h0c: rd_data_1 <= regs[12];
      5'h0d: rd_data_1 <= regs[13];
      5'h0e: rd_data_1 <= regs[14];
      5'h0f: rd_data_1 <= regs[15];
      5'h10: rd_data_1 <= regs[16];
      5'h11: rd_data_1 <= regs[17];
      5'h12: rd_data_1 <= regs[18];
      5'h13: rd_data_1 <= regs[19];
      5'h14: rd_data_1 <= regs[20];
      5'h15: rd_data_1 <= regs[21];
      5'h16: rd_data_1 <= regs[22];
      5'h17: rd_data_1 <= regs[23];
      5'h18: rd_data_1 <= regs[24];
      5'h19: rd_data_1 <= regs[25];
      5'h1a: rd_data_1 <= regs[26];
      5'h1b: rd_data_1 <= regs[27];
      5'h1c: rd_data_1 <= regs[28];
      5'h1d: rd_data_1 <= regs[29];
      5'h1e: rd_data_1 <= regs[30];
      5'h1f: rd_data_1 <= regs[31];
    endcase  

    if(wr_en)
    begin
      case(address_wr)
        5'h00: regs[0]  <= wr_data; 
        5'h01: regs[1]  <= wr_data;
        5'h02: regs[2]  <= wr_data;
        5'h03: regs[3]  <= wr_data;
        5'h04: regs[4]  <= wr_data;
        5'h05: regs[5]  <= wr_data;
        5'h06: regs[6]  <= wr_data;
        5'h07: regs[7]  <= wr_data;
        5'h08: regs[8]  <= wr_data;
        5'h09: regs[9]  <= wr_data;
        5'h0a: regs[10] <= wr_data;
        5'h0b: regs[11] <= wr_data;
        5'h0c: regs[12] <= wr_data;
        5'h0d: regs[13] <= wr_data;
        5'h0e: regs[14] <= wr_data;
        5'h0f: regs[15] <= wr_data;
        5'h10: regs[16] <= wr_data;
        5'h11: regs[17] <= wr_data;
        5'h12: regs[18] <= wr_data;
        5'h13: regs[19] <= wr_data;
        5'h14: regs[20] <= wr_data;
        5'h15: regs[21] <= wr_data;
        5'h16: regs[22] <= wr_data;
        5'h17: regs[23] <= wr_data;
        5'h18: regs[24] <= wr_data;
        5'h19: regs[25] <= wr_data;
        5'h1a: regs[26] <= wr_data;
        5'h1b: regs[27] <= wr_data;
        5'h1c: regs[28] <= wr_data;
        5'h1d: regs[29] <= wr_data;
        5'h1e: regs[30] <= wr_data;
        5'h1f: regs[31] <= wr_data;
      endcase  
    end
  end


endmodule