`timescale 1ns/100ps

module DFF_TB();
  reg clk,D,RST;
  reg Q;
  
  DFF ff0(clk , D , RST , Q);
  initial clk = 0;
  initial RST = 0;
  always #10 clk = ~clk;
  initial D = 0;
  initial begin
    $dumpfile("TEst.vcd");
    $dumpvars(1 , DFF_TB);
    #40 D = 1;
    #60 D = 0;
    #80 D = 1;
  #200$finish;
  end
endmodule
