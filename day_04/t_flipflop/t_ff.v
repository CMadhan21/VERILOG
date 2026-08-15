module t_ff(
    input T,clk,rst,
    output reg Q,
    output q_bar
);
    always @(posedge clk) begin
        if(rst)
            Q <= 1'b0;

        else if (T)
            Q <= ~Q;
    end
    assign q_bar = ~Q;
endmodule

/*
module t_ff (
    input T,clk,
    output Q,q_bar
);
    JK_ff uut (
        .J(T),
        .K(T),
        .clk(clk),
        .Q(Q),
        .q_bar(q_bar)
    );
endmodule


module JK_ff(
    input J,K,clk,
    output Q,q_bar
);
    wire J1, K1;

    nand(J1,J,clk,q_bar);
    nand(K1,K,clk,Q);
    nand(Q,q_bar,J1);
    nand(q_bar,Q,K1);
endmodule
*/