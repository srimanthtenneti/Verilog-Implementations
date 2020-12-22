module half_adder(
  input a , b,
  output sum , carry
);
  
  xor x0(sum , a , b);
  and a0(carry , a  ,b);
  
endmodule


module vedic_2x2(
  input [1:0] a,b,
  output [3:0]prod
);
  wire a0b0 , a1b0 , a0b1 , a1b1 , carry;
  
  assign a0b0 = a[0] & b[0];
  assign a0b1 = a[0] & b[1];
  assign a1b0 = a[1] & b[0];
  assign a1b1 = a[1] & b[1];
  
  assign prod[0] = a0b0;
  
  half_adder ha0(a1b0 , a0b1 , prod[1] , carry);
  half_adder ha1(a1b1 , carry , prod[2] , prod[3]);
  
endmodule
