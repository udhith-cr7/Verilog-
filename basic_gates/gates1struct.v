module structural(  input a, b,  output out_and, out_or, out_nand, out_nor, out_xor, out_xnor, out_nota, out_notb);
  and and_gate(out_and, a, b);
  or or_gate(out_or, a, b);
  nand nand_gate(out_nand, a, b);
  nor nor_gate(out_nor, a, b);
  xor xor_gate(out_xor, a, b);
  xnor xnor_gate(out_xnor, a, b);
  not not_gate_a(out_nota, a);
  not not_gate_b(out_notb, b);
endmodule
