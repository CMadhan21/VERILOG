module bcd_counter (
    input clk,
    input rst_n,
    output reg [3:0] q
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 4'b0000;
        else if (q == 4'd9)
            q <= 4'b0000;
        else
            q <= q + 1'b1;
    end

endmodule