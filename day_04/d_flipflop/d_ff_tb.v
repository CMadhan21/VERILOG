module d_ff_tb;
    reg D,clk;
    wire Q,q_bar;

    d_ff uut (.D(D),.clk(clk), .Q(Q), .q_bar(q_bar));


    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

       initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, d_ff_tb);

        $monitor("Time=%0t | D=%b clk=%b | Q=%b q_bar=%b",
                 $time, D, clk, Q, q_bar);

        D = 0;#10;
        D = 1;#10;
        D = 0;#10;
        D = 1;#10;

        $finish;

    end

endmodule