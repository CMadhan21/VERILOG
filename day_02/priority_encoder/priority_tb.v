module priority_encoder_tb;

    reg [3:0] d;
    wire [1:0] y;
    integer i;

    priority_encoder uut(
        .d(d),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, priority_encoder_tb);

        $monitor("Time=%0t | d=%b | y=%b",
                  $time, d, y);

        d= 4'b0000;
        for (i = 0; i < 16; i = i + 1) begin
            d = i; #10;
        end

        $finish;
    end

endmodule