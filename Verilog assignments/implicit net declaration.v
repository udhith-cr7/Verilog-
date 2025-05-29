2. Demonstrate implicit net declaration by creating a module where undeclared out is assigned using assign out = a | b​

//ans

module implicit_net_declaration;                                                                         ​
reg a,b;  
assign out=a|b;  ​
initial begin    ​

$monitor("a=%b b=%b out=%b",a,b,out);    ​
a=0;b=0;   ​

 #1 a=0;b=1;   ​

 #1 a=1;b=0;   ​

 #1 a=1;b=1;    ​

#1 $finish; ​

 end​
endmodule​
