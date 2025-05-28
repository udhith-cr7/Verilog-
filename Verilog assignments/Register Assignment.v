Create a module that uses:
•
reg [7:0] dataAssign and display a binary value.

//ans

module RegisterAssignment;

  reg [7:0] data;
  initial begin
    data = 8'b10101010;
    $display("The binary value of data is: %b", data);
  end
