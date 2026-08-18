// AND_GATE
module and_gate(c,a,b);
input a,b;
output c;
assign c=a&b;

endmodule

// OR GATE
module or_gate(c,a,b);
input a,b;
output c;
assign c=a|b;

endmodule

// NOT GATE 
module not_gate (y,a);
input a;
output y;
assign y=~a;

endmodule

// NAND GATE

module nand_gate (y,a,b);
input a,b;
output y;
assign y=~(a&b);

endmodule

// NOR GATE
module nor_gate (y,a,b);
input a,b;
output y;
assign y=~(a|b);

endmodule

// XOR GATE

module xor_gate (y,a,b);
input a,b;
output y;
assign y=a^b;

endmodule

// XNOR GATE

module xnor_gate (y,a,b);
input a,b;
output y;
assign y=~(a^b);

endmodule