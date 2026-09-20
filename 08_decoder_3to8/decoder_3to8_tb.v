module decoder_3to8_tb;

    reg [2:0] a;
    wire [7:0] y;

    decoder_3to8 uut (
        .a(a),
        .y(y)
    );

    integer i;
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, decoder_3to8_tb);
        for (i = 0; i < 8; i = i + 1) begin
            a = i;
            #10;
            $display("A = %b | Y = %b", a, y);
        end
        $finish;
    end

endmodule