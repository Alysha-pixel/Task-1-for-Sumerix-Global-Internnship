// TESTBENCH FOR AND_GATE
`timescale 1ps/1ps
`include "logic_gates.v"
module stimulus;
reg A,B;
// wire C;
// reg A;
wire Y;

// and_gate a1(C,A,B);
// or_gate o1(C,A,B);
// not_gate n1(Y,A);
// nand_gate n1(Y,A,B);
// nor_gate n1(Y,A,B);
// xor_gate x1(Y,A,B);
xnor_gate xn1(Y,A,B);


initial begin
    // $monitor($time, " A=%b, B=%b, C=%b", A,B,C);
    //  $monitor($time, " A=%b, Y=%b", A,Y);
      $monitor($time, " A=%b, B=%b, Y=%b", A,B,Y);
    // Test cases
    A=0; B=0;
#5  A=0; B=1;
#5  A=1; B=0;
#5  A=1; B=1;
//    A=0;
// #5 A=1;

#5 $finish;
end

initial begin
    $dumpfile("logic_gates.vcd");
    $dumpvars(0,stimulus);
end
endmodule