// Module 4-bit ripple carry adder.
module fulladdR(
    input wire [3:0] a,
    b,
    input wire cin,
    output wire [3:0] sum,
    output wire cout
);

    wire [3:0] c; // Carry signals

    // Instantiate full adder modules here.
    fulladd fa0(a[0], b[0], cin, sum[0], c[0]);
    fulladd fa1(a[1], b[1], c[0], sum[1], c[1]);
    fulladd fa2(a[2], b[2], c[1], sum[2], c[2]);
    fulladd fa3(a[3], b[3], c[2], sum[3], cout);

endmodule
