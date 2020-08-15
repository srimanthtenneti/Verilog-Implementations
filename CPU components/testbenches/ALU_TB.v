/* Test bench for ALU */

`timescale 1ns/100ps

module ALU_TB();
  reg [7:0] a,b;
  reg [3:0] command;
  reg oe;
  wire [15:0] y;
  
  ALU alu0(a,b,command,oe,y);
  
  initial begin
    a = 4'b0;
    b = 4'b0;
    oe = 1'b1;
    
    $dumpfile("test.vcd");
    $dumpvars(1 , ALU_TB);
    
    #10 a = 8'b1010;
        b = 8'b0101;
    
    $display("a : %b , b : %b",a,b);
    
    #10 command = 4'b0000;
    #5$display("Add : %b",y);
    #20 command = 4'b0010;
    #10$display("Sub : %b",y);
    #10 command = 4'b0111;
    #2$display("SHR : %b",y);
    #10 command = 4'b1111;
    #2$display("BUF : %b",y);
    #100$finish;
  end
endmodule
