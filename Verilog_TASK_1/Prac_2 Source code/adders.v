// HALF ADDER
module half_adder (s,cout,a,b);
input a,b;
output s,cout;
assign s=a^b;
assign cout =a&b;

endmodule

// FULL ADDER
module full_adder (s,cout,a,b,cin);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout =a&b|(cin&(a^b));

endmodule