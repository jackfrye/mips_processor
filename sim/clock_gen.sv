
module clock_gen #
(
  parameter integer PERIOD_NS = 5
)
(
    output clk
);

  always begin
    clk=1; #(PERIOD_NS/2); clk=0; #(PERIOD_NS/2);
  end 

endmodule 