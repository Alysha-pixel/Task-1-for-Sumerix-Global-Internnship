`timescale 1ps/1ps
`include "4_bit_rac.v"

module stimulus;
reg [3:0] A,B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;

ripple_carry_adder rac(SUM,C_OUT,A,B,C_IN);

initial begin
    $monitor($time, "A=%b, B=%b, C_IN=%b, SUM=%b, C_OUT=%b", A,B,C_IN,SUM,C_OUT);

    // TEST  CASES
    A=4'b1001; B=4'b0111; C_IN=1'b0;
#5    A=4'b1001; B=4'b1000; C_IN=1'b1;
#10 $finish;

end
 initial begin
    $dumpfile("4_bit_rac.vcd");
    $dumpvars(0,stimulus);
 end
endmodule