module comparator_8bit(
    input [7:0] A,
    input [7:0] B,
    output reg grt,
    output reg eq,
    output reg less
);

always @(*) begin

    grt  = 1'b0;
    eq   = 1'b0;
    less = 1'b0;

    if (A > B)
        grt = 1'b1;

    else if (A == B)
        eq = 1'b1;

    else
        less = 1'b1;

end

endmodule