
//even parity checker
module parity_checker (
    input  [3:0] data,
    input        p,
    output       error
);

    assign error = ^{data, p};

endmodule

//odd parity_checker
/*
module odd_parity_checker (
    input  [3:0] data,
    input        p,
    output       error
);

    assign error = ^{data, p};

endmodule
*/