Implement two separate modules:
•
One using wire and assign
•
Another using reg and procedural assignment Compare their simulation behavior

//answer

module WireAssignExample(output wire [3:0] out);
  assign out = 4'b1010;  // Constant value assigned to wire
endmodule

module RegAssignExample(output reg [3:0] out);
  initial begin
    out = 4'b1010;  // Value assigned inside an initial block
  end
endmodule

comparison:
Feature 	          wire with assign	                   reg with procedural assignment

Type	              Continuous assignment	               Procedural (inside initial/always)
Usage Context	      Dataflow or structural code	         Behavioral code
Simulation Behavior	Immediate & constant	               Set during simulation time
Needs a Block?	    No	                                 Yes (initial or always)
