module usr (
    input clk,
    input rst,
    input [1:0] sel,
    input sr_in,
    input sl_in,
    input [3:0] din,
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (rst)
            q <= 4'b0000;

        else begin
            case (sel)
                2'b00: q <= q;   
                2'b01: q <= {sr_in, q[3:1]};
                2'b10: q <= {q[2:0], sl_in};
                2'b11: q <= din;
            endcase
        end
    end
endmodule