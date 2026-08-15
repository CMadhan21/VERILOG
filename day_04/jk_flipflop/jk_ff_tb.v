module JK_ff_tb;
    reg J,K,clk;
    wire Q,q_bar;

    JK_ff uut (.J(J), .K(K),.clk(clk), .Q(Q), .q_bar(q_bar));


    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

       initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, JK_ff_tb);

        $monitor("Time=%0t | J=%b K=%b clk=%b | Q=%b q_bar=%b",
                 $time, J, K, clk, Q, q_bar);

        J = 0; K = 0; #50;  
        J = 0; K = 1; #50;  
        J = 1; K = 0; #50;  
        J = 1; K = 1; #50;  

        J = 0; K = 0; #50;  
        J = 1; K = 0; #50;  
        J = 0; K = 1; #50;

        $finish;

    end

endmodule