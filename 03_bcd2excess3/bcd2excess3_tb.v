module bcd_to_excess3_tb;
    reg  [3:0] bcd;
    wire [3:0] excess3;
    integer i;

    bcd_to_excess3 uut (
        .bcd(bcd),
        .excess3(excess3)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, bcd_to_excess3_tb);
        $monitor("Time=%0t | BCD=%b | Excess-3=%b",
                 $time, bcd, excess3);

        for (i = 0; i < 16; i = i + 1) begin
            bcd = i;
            #10;
        end
        $finish;
    end
endmodule