module hamming_7_4_tb;

    reg  [3:0] data;
    wire [6:0] code;

    hamming_7_4 uut (
        .data(data),
        .code(code)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, hamming_7_4_tb);

        $monitor("Time=%0t | Data=%b | Code=%b", $time, data, code);

        data = 4'b0000;
        #10;

        data = 4'b0001;
        #10;

        data = 4'b1011;
        #10;

        data = 4'b1101;
        #10;

        data = 4'b1111;
        #10;

        $finish;
    end

endmodule