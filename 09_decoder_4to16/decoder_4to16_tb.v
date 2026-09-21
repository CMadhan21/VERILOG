module decoder_4to16_tb;
    reg [3:0] a;
    wire [15:0] y;

    decoder_4to16 uut (.a(a),.y(y));

    integer i;
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, decoder_4to16_tb);

        for (i = 0; i < 16; i = i + 1) begin
            a = i;
            #10;
            $display("A = %b | Y = %b", a, y);
        end
        $finish;
    end

endmodule