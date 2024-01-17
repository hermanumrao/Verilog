`timescale 1ns / 1ps

module testbench;
  reg clk;
  wire led;
  
  // Instantiate the PWM module
  pwm pwm_inst (
    .clk(clk),
    .led(led)
  );
  
  // Clock generation
  always begin
    #1 clk = ~clk; // Toggle the clock every 1 ns
  end
  
  initial begin
    clk = 0; // Initialize the clock
    // Add your simulation code or stimulus here
    // You can monitor the 'led' signals and 'clk' in your waveform viewer.
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench);
    $display("Simulation started");
    #10000 $finish; // End simulation after 1000 ns
  end
endmodule 

