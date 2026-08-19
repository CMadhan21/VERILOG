module ring_counter_tb;

    reg clk, rst;
    wire [3:0] q;

    ring_counter uut (
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
        $dumpvars(0, ring_counter_tb);

        $monitor("time = %0t | clk = %b | rst = %b | q = %b",
                 $time, clk, rst, q);

        rst = 0;
        #10 rst = 1;

        #100;
        $finish;
    end

endmodule