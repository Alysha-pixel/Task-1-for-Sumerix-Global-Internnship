`timescale 1ps/1ps
`include "MUX.v"

module stimulus;

// reg i0,i1,s0;
reg i0,i1,i2,i3,s0,s1;

wire y;

// MUX_2X1 m1(y,i0,i1,s0);
   MUX_4X1 m2(y,i0,i1,i2,i3, s0,s1);

initial begin
    // $monitor($time, " I0=%b, I1=%b, S0=%b, Y=%b", i0,i1,s0,y);
        $monitor($time, " I0=%b, I1=%b, I2=%b, I3=%b, S0=%b, S1=%b, Y=%b", i0,i1,i2,i3,s0,s1,y);


    // TEST CASES
//       s0=0; i0=0; i1=1;
//    #5 s0=1; i0=1; i1=0;  
s1=0; s0=0; i0=1;i1=0;i2=0;i3=0;
#5 s1=0; s0=1; i0=0;i1=1;i2=0;i3=0;
#5 s1=1; s0=0; i0=1;i1=1;i2=0;i3=1;
#5 s1=1; s0=1; i0=1;i1=1;i2=1;i3=0;

   #30 $finish;
end
initial begin
    $dumpfile("MUX.vcd");
    $dumpvars(0,stimulus);
end

endmodule