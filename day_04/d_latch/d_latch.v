module d_latch(
    input d,
    input en,
    output reg q,
    output q_bar
);

    always@(*) begin
        if(en)
            q = d;
    end
    assign q_bar = ~q;

endmodule


/*

module d_latch(
 input d, en,
 output q, q_bar
);
wire r,s,d_bar;

not(d_bar,d);

and g1(r,d,en);
and g2(s,d_bar,en);

nor g3(q,r,q_bar);
nor g4(q_bar,s,q);

endmodule
*/