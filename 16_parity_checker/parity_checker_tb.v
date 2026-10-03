module parity_checker_tb;
    reg  [3:0] data;
    reg  p;
    wire error;

    parity_checker uut (
        .data(data),
        .p(p),
        .error(error)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, parity_checker_tb);
        $monitor("Time=%0t | Data=%b | P=%b | Error=%b",$time, data, p, error);
        data = 4'b0000; p = 1'b0; #10;
        data = 4'b1011; p = 1'b1; #10;
        data = 4'b1011; p = 1'b0; #10;
        $finish;
    end
endmodule