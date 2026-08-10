module rca(
    input [3:0]A,
    input [3:0]B,
    input Cin,
    output [3:0]S,
    output Cout
);
    wire [4:0] C;
    assign C[0] = Cin;

    full_adder FA0 (.a(A[0]),.b(B[0]),.cin(C[0]),.sum(S[0]),.cout(C[1]));
    full_adder FA1 (.a(A[1]),.b(B[1]),.cin(C[1]),.sum(S[1]),.cout(C[2]));
    full_adder FA2 (.a(A[2]),.b(B[2]),.cin(C[2]),.sum(S[2]),.cout(C[3]));
    full_adder FA3 (.a(A[3]),.b(B[3]),.cin(C[3]),.sum(S[3]),.cout(C[4]));

    assign Cout = C[4];

endmodule

module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule



