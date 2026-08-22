`timescale 1ps/1ps
`include "N_bit_addr.v"

module tb_nbit_adder;

    parameter N = 4;

    reg  [N-1:0] A;
    reg  [N-1:0] B;
    reg          Cin;

    wire [N-1:0] Sum;
    wire         Cout;

    // Instantiate the N-bit adder
    nbit_adder #(N) DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                 $time, A, B, Cin, Sum, Cout);

        // Test Case 1
        A = 4'b0000;
        B = 4'b0000;
        Cin = 0;
        #10;

        // Test Case 2
        A = 4'b0011;
        B = 4'b0101;
        Cin = 0;
        #10;

        // Test Case 3
        A = 4'b0111;
        B = 4'b0001;
        Cin = 0;
        #10;

        // Test Case 4 - Carry generation
        A = 4'b1111;
        B = 4'b0001;
        Cin = 0;
        #10;

        // Test Case 5 - Carry input
        A = 4'b0101;
        B = 4'b0011;
        Cin = 1;
        #10;

        // Test Case 6 - Maximum values
        A = 4'b1111;
        B = 4'b1111;
        Cin = 1;
        #10;

        $finish;

    end
    initial begin
        $dumpfile("N_bit_addr.vcd");
        $dumpvars(0,tb_nbit_adder);
    end

endmodule