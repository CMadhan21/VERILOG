module t_ff_tb;
    reg T,clk,rst;
    wire Q,q_bar;

    t_ff uut (
        .T(T),
        .clk(clk),
        .rst(rst),
        .Q(Q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, t_ff_tb);

        $monitor("Time=%0t | rst=%b T=%b clk=%b | Q=%b q_bar=%b",
         $time, rst, T, clk, Q, q_bar);


        rst = 1;T = 0;#20;
        rst = 0;#20;
        T = 0; #40;
        T = 1; #80;
        T = 0; #40;

        $finish;

    end

endmodule