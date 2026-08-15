module siso (
    input clk,rst,en,s_in,
    output s_out
);
    reg [3:0] temp ;
    always @(posedge clk) begin

        if (rst) begin
            temp <= 4'b0;
        end
        else if (en) begin
            temp <= {s_in, temp[3:1]};
        end
    end

    assign s_out = temp[0];

endmodule