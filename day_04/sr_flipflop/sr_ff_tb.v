module sr_ff_tb;
    reg S,R,clk;
    wire Q,q_bar;

    sr_ff uut (.S(S), .R(R),.clk(clk), .Q(Q), .q_bar(q_bar));


    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

   initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, sr_ff_tb);

    $monitor("Time=%0t | S=%b R=%b clk=%b | Q=%b q_bar=%b",
             $time, S, R, clk, Q, q_bar);

    S = 0; R = 0; #50;
    S = 0; R = 1; #50;
    S = 1; R = 0; #50;
    S = 1; R = 1; #50;

    S = 0; R = 0; #50;
    S = 1; R = 0; #50;
    S = 0; R = 1; #50;

    $finish;

end

endmodule