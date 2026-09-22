module demux_1to8_tb;
    reg i;
    reg [2:0] sel;
    wire [7:0] y;

    demux_1to8 uut (.i(i),.sel(sel),.y(y));

    integer j;

    initial begin
        $dumpfile("demux.vcd");
        $dumpvars(0, demux_1to8_tb);
        $monitor("Time=%0t | i=%b | sel=%b | y=%b",$time, i, sel, y);

        i = 1'b1;

        for (j = 0; j < 8; j = j + 1) begin
            sel = j;
            #10;
        end

        i = 1'b0;
        #10;
        $finish;
    end
endmodule