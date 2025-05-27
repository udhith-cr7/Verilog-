module basic_gates(
  input a,b,
  output out_and,out_or,out_nand,out_nor,out_xor,out_xnor,out_nota,out_notb);
  assign out_and=a&b;
  assign out_or=a|b;
  assign out_nand=~(a&b);
  assign out_nor=~(a|b);
  assign out_xor=a^b;
  assign out_xnor=~(a^b);
  assign out_nota=~a;
  assign out_notb=~b;
endmodule
