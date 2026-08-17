module sipo_tb;
    reg clk,rst,en,s_in;
    wire [3:0] s_out;

    sipo uut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .s_in(s_in),
        .s_out(s_out)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, sipo_tb);

        $monitor("Time=%0t | rst=%b en=%b s_in=%b | s_out=%b",
                 $time, rst, en, s_in, s_out);

        rst = 1;
        en = 0;
        s_in = 0;
        #20;

        rst = 0;
        en = 1;

        s_in = 1; #20;
        s_in = 0; #20;
        s_in = 1; #20;
        s_in = 1; #20;

        en = 0;
        s_in = 0;
        #40;

        $finish;

    end

endmodule