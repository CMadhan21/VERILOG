module mux_8x1_tb;

    reg [7:0] i;
    reg [2:0] s;
    wire out;

    mux_8x1 uut (
    .i(i),
    .s(s),
    .out(out)
    );

    integer j;

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, mux_8x1_tb);
        i = 8'b10101010;

        for (j = 0; j < 8; j = j + 1) begin
            s = j;
            #10;
            $display("i = %b | s = %b | out = %b", i, s, out);
        end
        $finish;
    end
endmodule