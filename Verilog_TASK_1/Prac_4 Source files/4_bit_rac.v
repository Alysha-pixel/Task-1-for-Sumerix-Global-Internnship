// Full Adder
module full_adder(s,c_out,a,b,c_in);
input a,b,c_in;
output s,c_out;
assign s=a^b^c_in;
assign c_out=a&b|(c_in&(a^b));
endmodule

// 4_bit_rac
module ripple_carry_adder(SUM,C_OUT,A,B,C_IN);
input [3:0] A,B;
input C_IN;
output [3:0] SUM;
output C_OUT;
wire C1,C2,C3;

full_adder fa0(SUM[0],C1,A[0],B[0],C_IN);
full_adder fa1(SUM[1],C2,A[1],B[1],C1);
full_adder fa2(SUM[2],C3,A[2],B[2],C2);
full_adder fa3(SUM[3],C_OUT,A[3],B[3],C3);
endmodule

