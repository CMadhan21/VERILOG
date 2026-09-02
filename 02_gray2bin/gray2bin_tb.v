module gray_binary_conv_tb;

    reg  [3:0] gray;
    wire [3:0] bin;
    integer i;

    gray_binary_conv uut (
        .gray(gray),
        .bin(bin)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, gray_binary_conv_tb);
        $monitor("Time=%0t | Gray=%b | Binary=%b",$time, gray, bin);

        for (i = 0; i < 16; i = i + 1) begin
            gray = i;
            #10;
        end

        $finish;
    end

endmodule