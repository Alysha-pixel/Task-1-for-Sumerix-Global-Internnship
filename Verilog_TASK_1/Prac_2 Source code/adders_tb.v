// TEST BENCH
`timescale 1ps/1ps
`include "adders.v"

module stimulus;
// reg A,B;
reg A,B,CIN;
wire S,COUT;

// half_adder h(S,COUT,A,B);
 full_adder f1(S,COUT,A,B,CIN);

initial begin
    // $monitor($time, "A=%b, B=%b, S=%b, COUT=%b", A,B,S,COUT);
    $monitor($time, "A=%b, B=%b,CIN=%b, S=%b, COUT=%b", A,B,CIN,S,COUT);

//     // TEST CASES
//     A=0; B=0;
// #5  A=0; B=1;    
// #5  A=1; B=0;    
// #5  A=1; B=1;    

A=0; B=0; CIN=0;
#5 A=0; B=0; CIN=1;
#5 A=0; B=1; CIN=0;
#5 A=0; B=1; CIN=1;
#5 A=1; B=0; CIN=0;
#5 A=1; B=0; CIN=1;
#5 A=1; B=1; CIN=0;
#5 A=1; B=1; CIN=1;

#5 $finish;

end 
initial begin
    $dumpfile("adders.vcd");
    $dumpvars(0,stimulus);
end
endmodule