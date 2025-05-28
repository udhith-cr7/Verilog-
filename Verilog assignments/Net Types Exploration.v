Write a Verilog module using:
•
wand, wor, tri, triand
•
Drive them using assign and simulate with #delay and $monitor.


//ans

module test_wires;
  wand w_and;
  wor w_or;
  tri t_tri;
  triand t_triand;

  assign #5 w_and = 1'b0, w_or = 1'b1, t_tri = 1'bz, t_triand = 1'b1;
  assign #10 w_and = 1'b1, w_or = 1'b0, t_tri = 1'b0, t_triand = 1'b0;

  initial begin
    $monitor("Time=%0t | wand=%b wor=%b tri=%b triand=%b", 
             $time, w_and, w_or, t_tri, t_triand);
  end
endmodule
