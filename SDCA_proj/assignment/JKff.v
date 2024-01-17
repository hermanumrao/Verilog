module JK_flipflop(
 input wire clk, reset, j, k,
 output reg q
);
always @(posedge clk or posedge reset)
 if (reset)
 q <= 1'b0;
 else if (j && k)
 q <= q;
 else if (j)
 q <= 1'b1;
 else if (k)
 q <= 1'b0;
endmodule
