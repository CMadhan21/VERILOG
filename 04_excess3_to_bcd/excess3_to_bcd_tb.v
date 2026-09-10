module excess3_to_bcd_tb;
    reg  [3:0] excess3;
    wire [3:0] bcd;
    integer i;

    excess3_to_bcd uut (
        .excess3(excess3),
        .bcd(bcd)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, excess3_to_bcd_tb);
        $monitor("Time=%0t | Excess-3=%b | BCD=%b",
                 $time, excess3, bcd);
                 
        for (i = 0; i < 16; i = i + 1) begin
            excess3 = i;
            #10;
        end

        $finish;
    end

endmodule