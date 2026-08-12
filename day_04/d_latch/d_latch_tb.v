module d_latch_tb;
    reg d;
    reg en;
    wire q;
    wire q_bar;
    integer i;
    d_latch uut(.d(d),
                .en(en),
                .q(q),
                .q_bar(q_bar)
    );

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, d_latch_tb);
        $monitor("Time=%0t | en=%b d=%b | q=%b q_bar=%b",
                 $time, en, d, q, q_bar);

        for (i = 0; i < 4; i = i + 1) begin
            {en, d} = i;
            #20;
        end

        $finish;
    end

endmodule