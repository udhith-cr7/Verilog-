Write a Verilog module where:
•
net1 and net2 are wires.
•
net1 is assigned a constant value and net2 = net1.
•
Display their values using $display.

//ans
module circuit (output wire net1, net2);
  assign net1 = 1;
  assign net2 = net1;
  initial begin
    $display("net1=%b net2=%b", net1, net2);
  end
endmodule
