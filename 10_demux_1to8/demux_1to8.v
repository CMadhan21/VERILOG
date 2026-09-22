module demux_1to8 (
    input       i,
    input [2:0] sel,
    output reg [7:0] y
);

always @(*) begin
    y = 8'b00000000;
    case (sel)
        3'b000: y[0] = i;
        3'b001: y[1] = i;
        3'b010: y[2] = i;
        3'b011: y[3] = i;
        3'b100: y[4] = i;
        3'b101: y[5] = i;
        3'b110: y[6] = i;
        3'b111: y[7] = i;
    endcase
end
endmodule