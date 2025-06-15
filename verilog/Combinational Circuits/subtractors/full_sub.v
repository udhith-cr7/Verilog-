module full_sub(
  input a,B,bin,
  output reg d,b);
  
  always@(*)
    begin
      case({a,B,bin})
        3'b000:{d,b} = 2'b00;
        3'b001:{d,b} = 2'b11;
        3'b010:{d,b} = 2'b11;
        3'b011:{d,b} = 2'b01;
        3'b100:{d,b} = 2'b10;
        3'b101:{d,b} = 2'b00;
        3'b110:{d,b} = 2'b00;
        3'b111:{d,b} = 2'b11;
    endcase
  end
endmodule
