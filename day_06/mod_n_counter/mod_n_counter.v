module mod_n_counter #(
    parameter N = 10
)(
    input clk,rst_n,
    output reg [3:0] q
);

    always @(posedge clk or negedge rst_n) begin

        if(!rst_n)
            q <= 4'b0;
        else if(q ==N-1)
            q <= 4'b0;
        else
            q <= q + 1'b1;
    end
endmodule