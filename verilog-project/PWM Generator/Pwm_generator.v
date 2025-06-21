module PWM_Generator(
    input clk,              
    input [7:0] sw,         
    output reg led_out      
);

    
    reg [16:0] clk_div = 0;  
    reg pwm_clk = 0;

    always @(posedge clk) begin
        clk_div <= clk_div + 1;
        if (clk_div == 49999) begin    
            clk_div <= 0;
            pwm_clk <= ~pwm_clk;
        end
    end

    
    reg [7:0] counter = 0;

    always @(posedge pwm_clk) begin
        counter <= counter + 1;
        led_out <= (counter < sw) ? 1'b1 : 1'b0;
    end

endmodule
