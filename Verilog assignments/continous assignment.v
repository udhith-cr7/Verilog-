1. Write a Verilog module using a continuous assignment to implement out = a & b.​

  //ans
  
  module cont_assignment;                                                                                                             ​
wire out;​
reg a,b;  ​
assign out=a&b; ​
 initial begin   ​

$monitor("a=%b b=%b out=%b",a,b,out);    ​

a=0;b=0;    ​

#1 a=0;b=1;    ​

#1 a=1;b=0;    ​

#1 a=1;b=1;    ​

#1 $finish;  ​

end​
endmodule​
  
