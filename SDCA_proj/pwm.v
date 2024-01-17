`timescale 1ns / 1ps

module pwm(clk, led);

  input clk;
  output led;

  // Counter
  reg [7:0] counter = 0;
  always @(posedge clk) begin
    if (counter < 255)
      counter <= counter + 1;
    else
      counter <= 0;
  end

  
  assign led = (counter < 127) ? 0:1;
endmodule

