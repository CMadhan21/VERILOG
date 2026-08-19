module mod_n_counter_tb;

    reg clk;
    reg rst_n;
    wire [3:0] q;

    mod_n_counter #(.N(10)) uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, mod_n_counter_tb);

        $monitor("time=%0t | rst=%b | q=%d",
                 $time, rst_n, q);

    rst_n = 1;       // reset inactive
    #2 rst_n = 0;    // explicit reset edge
    #10 rst_n = 1;   // release reset

        #100;
        $finish;
    end

endmodule