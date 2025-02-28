
module sim_multicycle_tb();

  logic clk;
  logic rst='0;

  always begin
    clk=1; #2.5ns; clk=0; #2.5ns;
  end

  mips_multicycle
  (
    .clk  (clk),
    .rst  (rst)
  );


endmodule 