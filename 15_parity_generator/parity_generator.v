
// Even Parity Generator
module parity_generator (
    input  [3:0] b,
    output       y
);

    assign y = ^b;

endmodule


//Odd Parity Generator
/*
module parity_generator (
    input  [3:0] b,
    output       y
);

    assign y = ~^b;

endmodule
*/