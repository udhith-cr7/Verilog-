module tb_demux1to4;

  reg din;
  reg [1:0] sel;
  wire [3:0] y;

  demux1to4 uut (
    .din(din),
    .sel(sel),
    .y(y)
  );

  initial begin
    $display("Sel | Din | Y");

    din = 1;

    sel = 2'b00; #10 $display("%b   |  %b  | %b", sel, din, y);
    sel = 2'b01; #10 $display("%b   |  %b  | %b", sel, din, y);
    sel = 2'b10; #10 $display("%b   |  %b  | %b", sel, din, y);
    sel = 2'b11; #10 $display("%b   |  %b  | %b", sel, din, y);

    $finish;
  end
  initial begin
    $dumpfile("demux1to4.vcd");
    $dumpvars(1,tb_demux1to4);
  end

endmodule
