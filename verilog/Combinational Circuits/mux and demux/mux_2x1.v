module mux2_1(
  input d0,d1,s0,  
  output y);
  wire x,a,b;   
  not (x,s0);
  and (a,x,d0);
  and (b,s0,d1);
  or (y,a,b);
endmodule
