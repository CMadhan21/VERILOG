module binary_gray_conv_tb;

    reg  [3:0] b;
    wire [3:0] g;

    integer i;

    binary_gray_conv uut (
        .b(b),
        .g(g)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, binary_gray_conv_tb);

        $monitor("Time=%0t | Binary=%b | Gray=%b",
                 $time, b, g);

        for (i = 0; i < 16; i = i + 1) begin
            b = i;
            #10;
        end

        $finish;
    end

endmodule