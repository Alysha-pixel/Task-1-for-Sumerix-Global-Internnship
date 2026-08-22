module nbit_adder #(
    parameter N = 4
)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    input          Cin,
    output [N-1:0] Sum,
    output         Cout
);

    assign {Cout, Sum} = A + B + Cin;

endmodule