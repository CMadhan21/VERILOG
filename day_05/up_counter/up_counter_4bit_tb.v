module up_counter_4bit_tb;
    reg clk, rst;
    wire [3:0] q;

    up_counter_4bit uut (
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
        $dumpvars(0, up_counter_4bit_tb);      
        $monitor("time = %0t | clk = %b rst = %b | q = %b",
                 $time, clk, rst, q);

        rst = 0;       
        #10 rst = 1;   
        #100;
        $finish;
    end

endmodule