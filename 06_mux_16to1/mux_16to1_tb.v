module mux_16x1_tb;

    reg [15:0] i;
    reg [3:0] s;
    wire out;

    mux_16x1 uut (
        .i(i),
        .s(s),
        .out(out)
    );

    integer j;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, mux_16x1_tb);
        i = 16'b1010101010101010;

        for (j = 0; j < 16; j = j + 1) begin
            s = j;
            #10;
            $display("i = %b | s = %b | out = %b",i, s, out);
        end
        $finish;
    end
endmodule