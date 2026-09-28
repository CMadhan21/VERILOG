module multiplier_array_4bit(
    input  [3:0] A,
    input  [3:0] B,
    output [7:0] P
);

    wire [3:0] pp0, pp1, pp2, pp3;
    wire [7:0] row0, row1, row2, row3;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    assign row0 = {4'b0000, pp0};
    assign row1 = {3'b000, pp1, 1'b0};
    assign row2 = {2'b00, pp2, 2'b00};
    assign row3 = {1'b0, pp3, 3'b000};

    assign P = row0 + row1 + row2 + row3;

endmodule