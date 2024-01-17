
// Write code for modules you need here
module fulladd(input wire a, b, cin, output wire sum, cout);    
wire [4:0] t;    
    xor2 x0(a, b, t[0]);    
    xor2 x1(t[0], cin, sum);    
    
    and2 a0(a, b, t[1]);    
    and2 a1(a, cin, t[2]);    
    and2 a2(b, cin, t[3]);    
    
    or2 o0(t[1], t[2], t[4]);    
    or2 o1(t[3], t[4], cout);    
endmodule 

module sing_alu (input wire [1:0] op, input wire i0, i1,cin, output wire o, output wire cout);
wire xorw, sum1, and1, or1, tmp;

  // Corrected signal names and assignments
	xor2 xor_2 (i0, cin, xorw);
	fulladd fa_1 (i0, i1, xorw, sum1, cout);
	and2 and_2 (i0, i1, and1);
	or2 or_2 (i0, i1, or1);
	mux2 mux_1 (and1, or1, op[0], tmp);
	mux2 mux_2 (tmp, sum1, op[1], o); // Changed op0 to op

endmodule

module alu (input wire [1:0] op, input wire [15:0] i0, i1,output wire [15:0] o, output wire cout);
wire [14:0] c;
	sing_alu alu1 (op,i0[0],i1[0],op[0],o[0],c[0]);
	sing_alu alu2 (op,i0[1],i1[1],c[0],o[1],c[1]);
	sing_alu alu3 (op,i0[2],i1[2],c[1],o[2],c[2]);
	sing_alu alu4 (op,i0[3],i1[3],c[2],o[3],c[3]);
	sing_alu alu5 (op,i0[4],i1[4],c[3],o[4],c[4]);
	sing_alu alu6 (op,i0[5],i1[5],c[4],o[5],c[5]);
	sing_alu alu7 (op,i0[6],i1[6],c[5],o[6],c[6]);
	sing_alu alu8 (op,i0[7],i1[7],c[6],o[7],c[7]);
	sing_alu alu9 (op,i0[8],i1[8],c[7],o[8],c[8]);
	sing_alu alu10 (op,i0[9],i1[9],c[8],o[9],c[9]);
	sing_alu alu11 (op,i0[10],i1[10],c[9],o[10],c[10]);
	sing_alu alu12 (op,i0[11],i1[11],c[10],o[11],c[11]);
	sing_alu alu13 (op,i0[12],i1[12],c[11],o[12],c[12]);
	sing_alu alu14 (op,i0[13],i1[13],c[12],o[13],c[13]);
	sing_alu alu15 (op,i0[14],i1[14],c[13],o[14],c[14]);
	sing_alu alu16 (op,i0[15],i1[15],c[14],o[15],cout);
	
endmodule

