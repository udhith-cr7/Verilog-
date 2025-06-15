module full_sub_tb;
  reg a,B,bin;
  wire d,b;
  
  full_sub uut(a,B,bin,d,b);
  
  initial begin
    
    a = 1'b0; B = 1'b0; bin = 1'b0;#10;
    a = 1'b0; B = 1'b0; bin = 1'b1;#10;
    a = 1'b0; B = 1'b1; bin = 1'b0;#10;
    a = 1'b0; B = 1'b1; bin = 1'b1;#10;
    a = 1'b1; B = 1'b0; bin = 1'b0;#10;
    a = 1'b1; B = 1'b0; bin = 1'b1;#10;
    a = 1'b1; B = 1'b1; bin = 1'b0;#10;
    a = 1'b1; B = 1'b1; bin = 1'b1;#10;
    
    $finish;
  end
  initial begin
    $dumpfile("full_sub.vcd");
    $dumpvars(1,full_sub_tb);
  end
  initial begin
    $monitor("Time = %0t \t  INPUT A = %b B = %b Bin = %b | OUTPUT  DIFF = %b BORROW = %b",$time,a,B,bin,d,b);
  end
endmodule
