module comparator(
    input [1:0] A,
    input [1:0] B,
    output gt, eq, lt
);

    assign gt = ( A > B);
    assign eq = ( A == B);
    assign lt = ( A < B);

endmodule