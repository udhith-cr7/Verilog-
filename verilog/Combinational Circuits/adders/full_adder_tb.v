module full_adder_tb;
  reg a,b,c;
  wire sum,carry;
  full_adder fulladder(.a(a),.b(b),.c(c),.sum(sum),.carry(carry)); 
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1, full_adder_tb);
    $monitor("a=%0d b=%0d c=%0d sum=%0d carry=%0d",a,b,c,sum,carry);
  end
  initial begin
    a=0 ; b=0 ; c=0;
    #10
    a=0 ; b=0 ; c=1;
    #10
    a=0 ; b=1 ; c=0;
    #10
    a=0 ; b=1 ; c=1;
    #10
    a=1 ; b=0 ; c=0;
    #10
    a=1 ; b=0 ; c=1;
    #10
    a=1 ; b=1 ; c=0;
    #10
    a=1 ; b=1 ; c=1;
    #10
    $finish;
  end
endmodule
