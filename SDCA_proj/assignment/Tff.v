module T_flipflop(
 input wire clk, reset, t,
 output reg q
);
always @(posedge clk or posedge reset)
 if (reset)
 q <= 1'b0;
 else if (t)
 q <= ~q;
endmodule
