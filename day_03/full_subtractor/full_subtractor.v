module full_subtractor(
    input a,
    input b,
    input cin,
    output Diff,
    output Borrow
);

    assign Diff = a ^ b ^ cin;
    assign Borrow = (~a & b) | (b & cin) | (~a & cin);

endmodule