module mux_16x1(
    input [15:0] i,
    input [3:0] s,
    output reg out
);

always @(*) begin
    case (s)
        4'b0000: out = i[0];
        4'b0001: out = i[1];
        4'b0010: out = i[2];
        4'b0011: out = i[3];
        4'b0100: out = i[4];
        4'b0101: out = i[5];
        4'b0110: out = i[6];
        4'b0111: out = i[7];
        4'b1000: out = i[8];
        4'b1001: out = i[9];
        4'b1010: out = i[10];
        4'b1011: out = i[11];
        4'b1100: out = i[12];
        4'b1101: out = i[13];
        4'b1110: out = i[14];
        4'b1111: out = i[15];
        default: out = 1'b0;
    endcase
end
endmodule