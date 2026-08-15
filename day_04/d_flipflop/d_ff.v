module d_ff(
    input D,clk,
    output reg Q,
    output q_bar
);

    always @(posedge clk) begin
        Q = D;
    end
    assign q_bar = ~Q;

endmodule


/*
module d_ff(
    input D,clk,
    output Q,q_bar
);
    wire S,R,s1, r1;
    assign S = D;
    assign R = ~D;
    
    nand(s1,S,clk);
    nand(r1,R,clk);
    nand(Q,q_bar,s1);
    nand(q_bar,Q,r1);

endmodule
*/