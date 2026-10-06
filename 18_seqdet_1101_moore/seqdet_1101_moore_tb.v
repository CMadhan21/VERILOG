module seqdet_1101_moore_tb;
    reg clk;
    reg rst;
    reg din;
    wire detected;

    seqdet_1101_moore uut (
        .rst(rst),
        .din(din),
        .clk(clk),
        .detected(detected)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        din = 0;

        $dumpfile("dump.vcd");
        $dumpvars(0, seqdet_1101_moore_tb);

        $monitor("Time=%0t | rst=%b | din=%b | detected=%b",$time, rst, din, detected);

        #12;
        rst = 0;
        @(negedge clk) din = 1;
        @(negedge clk) din = 1;
        @(negedge clk) din = 0;
        @(negedge clk) din = 1;
        @(negedge clk);
        @(negedge clk) din = 1;
        @(negedge clk) din = 0;
        @(negedge clk) din = 1;

        @(negedge clk);

        #10 $finish;
    end

endmodule