module testbench;
reg clk, reset, d, j, k, t;
wire q_d, q_jk, q_t;
JK_flipflop JKFF(.clk(clk), .reset(reset), .j(j), .k(k), .q(q_jk));
initial begin
 $dumpfile("wave.vcd");
 $dumpvars(0, testbench);
 // Test scenarios
 reset = 1;
 clk = 0;
 j = 0;
 k = 0;
 #10 reset = 0;
 // Test JK Flip-Flop
 j = 1;
 k = 1;
 #10 j = 0;
 #10 k = 0;
 $finish;
end
always #5 clk = ~clk;
endmodule
