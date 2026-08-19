module updown_counter_4bit(
    input clk,
    input rst_n,
    input updown,
    output reg [3:0] q
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 4'b1111;
        else if(updown)
            q <= q + 1'b1;
        else
            q <= q - 1'b1;
    end

endmodule