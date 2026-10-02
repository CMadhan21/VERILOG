module parity_generator_tb;
    reg  [3:0] b;
    wire y;

    parity_generator uut (
        .b(b),
        .y(y)
    );

    integer i;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, parity_generator_tb);

        for (i = 0; i < 16; i = i + 1) begin
            b = i;
            #10;
            $display("Data = %b | Parity = %b", b, y);
        end
        $finish;
    end
endmodule