module testbench;
reg clk, reset, d, j, k, t;
wire q_d, q_jk, q_t;
// Instantiate flip-flops

T_flipflop TFF(.clk(clk), .reset(reset), .t(t), .q(q_t));
initial begin
 $dumpfile("wave.vcd");
 $dumpvars(0, testbench);
 // Test scenarios
 reset = 1;
 clk = 0;
 t = 0;
 #10 reset = 0;
// Test T Flip-Flop
t = 1;
 #10 t = 0;
 $finish;
end
always #5 clk = ~clk;
endmodule
