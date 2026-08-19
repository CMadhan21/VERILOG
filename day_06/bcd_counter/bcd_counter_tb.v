module bcd_counter_tb;

    reg clk;
    reg rst;
    wire [3:0] q;

    bcd_counter uut (
        .clk(clk),
        .rst_n(rst),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, bcd_counter_tb);

        $monitor("time=%0t | clk=%b | rst=%b | BCD=%b",
                 $time, clk, rst, q);

        rst = 0;
        #10 rst = 1;

        #120;
        $finish;
    end

endmodule