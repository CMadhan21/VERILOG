module hamming_7_4 (
    input  [3:0] data,
    output [6:0] code
);

    wire p1, p2, p4;

    assign p1 = data[3] ^ data[2] ^ data[0];
    assign p2 = data[3] ^ data[1] ^ data[0];
    assign p4 = data[2] ^ data[1] ^ data[0];

    assign code = {
        data[0], data[1], data[2], p4, data[3], p2, p1};

endmodule