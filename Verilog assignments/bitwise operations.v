 4.Implement the following bitwise operations in a module and display the result: • ~x, x & y, x | y, x ^ y, x ^~ y​.

//ans

module bitwise_ops;                                                                                                        ​
reg [3:0] x = 4'b0101;    ​
reg [3:0] y = 4'b1100;   ​
 wire [3:0] not_x, and_xy, or_xy, xor_xy, xnor_xy;    ​
assign not_x  = ~x;                                                                                                                                         ​
assign and_xy = x & y;    ​
assign or_xy  = x | y;   ​
assign xor_xy = x ^ y;    ​
assign xnor_xy = x ^~ y;    ​
 initial begin 
   ​
   #10;       ​
$display("x: %b, y: %b", x, y);       ​

$display("~x:      %b", not_x);        ​

$display("x & y:   %b", and_xy);        ​

$display("x | y:   %b", or_xy);       ​

$display("x ^ y:   %b", xor_xy);   
   ​
$display("x ^~ y:  %b", xnor_xy);    ​
end​
endmodule​
