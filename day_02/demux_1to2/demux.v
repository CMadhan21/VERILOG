module demux(
    input en,s,I,
    output [1:0]y
    );

    assign y[0] = en & ~s & I;
    assign y[1] = en &  s & I;

endmodule