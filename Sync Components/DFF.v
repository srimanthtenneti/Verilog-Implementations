`timescale 1ns/100ps

module DFF(
  
  input clk,
  input D,
  input RST,
  output reg Q );
  
  always @ (posedge(clk)) begin
    if(RST) Q = 0;
    else Q = D;
  end 
  
endmodule
