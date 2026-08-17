module usr_tb;
    reg clk;
    reg rst;
    reg [1:0] sel;
    reg sr_in;
    reg sl_in;
    reg [3:0] din;
    wire  [3:0] q;

    usr uut (
        .clk(clk),
        .rst(rst),
        .sel(sel),
        .sr_in(sr_in),
        .sl_in(sl_in),
        .din(din),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, usr_tb);

        $monitor("Time=%0t | rst=%b sel=%b sr_in=%b sl_in=%b din=%b | q=%b",
                 $time, rst, sel, sr_in, sl_in, din, q);
                 
        // Reset
        rst = 1;
        sel = 2'b00;
        sr_in = 0;
        sl_in = 0;
        din = 4'b0000;
        #10;

        rst = 0;

        // Parallel load: 1011
        sel = 2'b11;
        din = 4'b1011;
        #10;

        // Hold
        sel = 2'b00;
        #10;

        // Shift right, sr_in = 1
        sel = 2'b01;
        sr_in = 1;
        #10;

        // Shift right again
        #10;

        // Shift left, sl_in = 0
        sel = 2'b10;
        sl_in = 0;
        #10;

        // Shift left again
        #10;

        // Parallel load: 1100
        sel = 2'b11;
        din = 4'b1100;
        #10;

        $finish;
    end
endmodule