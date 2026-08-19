module updown_counter_4bit_tb;

    reg clk, rst,updown;
    wire [3:0] q;

    updown_counter_4bit uut (
        .clk(clk),
        .rst_n(rst),
        .updown(updown),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, down_counter_4bit_tb);

        $monitor("time = %0t | clk = %b | rst = %b | updown = %b | q = %b",
                 $time, clk, rst,updown, q);

        rst = 0;
        #10 rst = 1;
        updown = 0;

        #100;

        rst = 0;
        #10 rst = 1;
        updown = 1;
        #100
        
        $finish;
    end

endmodule