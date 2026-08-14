module sr_ff(
    input S,R,clk,
    output reg Q,
    output q_bar
);

    always@(posedge clk) begin
        case ({S,R})
            2'b01 : Q = 1'b0;
            2'b10 : Q = 1'b1;
            2'b11 : Q = 1'bx;
            default : Q = Q;
        endcase
    end
    assign q_bar = ~Q;
endmodule

/*
module sr_ff(
    input S,R,clk,
    output Q,q_bar
);
    wire s1, r1;

    nand(s1,S,clk);
    nand(r1,R,clk);
    nand(Q,q_bar,s1);
    nand(q_bar,Q,r1);
endmodule
*/