module JK_ff(
    input J,K,clk,
    output reg Q,
    output q_bar
);

    always@(posedge clk) begin
        case ({J,K})
            2'b01 : Q <= 1'b0;
            2'b10 : Q <= 1'b1;
            2'b11 : Q <= ~Q;
            default : Q <= Q;
        endcase
    end
    assign q_bar = ~Q;
endmodule

/*
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