
module structural_tb;
  reg a, b;
  wire out_and, out_or, out_nand, out_nor, out_xor, out_xnor, out_nota, out_notb;

  structural dut (.a(a), .b(b),  .out_and(out_and),  .out_or(out_or),  .out_nand(out_nand),  .out_nor(out_nor),  .out_xor(out_xor),  .out_xnor(out_xnor),  .out_nota(out_nota),   .out_notb(out_notb) );

  initial begin
    a = 0; b = 0;
    $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b NOTA=%b NOTB=%b", $time, a, b, out_and, out_or, out_nand, out_nor, out_xor, out_xnor, out_nota, out_notb);
    #10 a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #20 $finish;
  end
endmodule
