module johnson_counter(
    input clk,
    input rst_n,
    output reg [3:0] q
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 4'b0001;
        else
            q <= { ~q[0],q[3:1]};
    end

endmodule