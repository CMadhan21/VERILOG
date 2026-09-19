module bin2bcd_tb;
    reg [3:0] bin;
    wire [7:0] bcd;
    integer i;
    bin2bcd uut (
        .bin(bin),
        .bcd(bcd)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, bin2bcd_tb);
        $monitor("Time=%0t | Binary=%b (%0d) | BCD=%b",$time, bin, bin, bcd);

        for (i = 0; i < 16; i = i + 1) begin
            bin = i;
            #10;
        end
        $finish;
    end

endmodule