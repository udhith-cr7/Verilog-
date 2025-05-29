3. Write a module using delay in assign statement: assign #5 sum = a + b; and simulate the output using $monitor.​

  //ans
  
module delayed_adder (​
input  [3:0] a,                                                                                                                                                                                      ​
input  [3:0] b,    ​
output [4:0] sum​
);​
assign #5 sum = a + b;​
endmodule​


module test_delayed_adder;​
reg  [3:0] a, b;​
wire [4:0] sum;​
delayed_adder uut (.a(a), .b(b), .sum(sum));​
initial begin ​

 $monitor("Time = %0t | a = %04b, b = %04b => sum = %05b", $time, a, b, sum);   ​

 a = 4'b0000; b = 4'b0000; ​

   #10;   ​

 a = 4'b0101; b = 4'b0011;  ​

#10;   ​

 a = 4'b0111; b = 4'b1001; ​

#10;  ​

  a = 4'b1111; b = 4'b1111;  ​

#10;    ​

$finish;​
end​
endmodule​

​
