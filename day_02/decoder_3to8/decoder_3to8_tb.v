module decoder_3to8_tb;
    reg [2:0] i;
    wire [7:0] y;

    decoder_3to8 DUT (
        .i(i),
        .y(y)
    );

    initial begin 
        $dumpfile("decoder_3to8_tb.vcd");
        $dumpvars(0, decoder_3to8_tb);

        $monitor("Time: %0t | Input: %b | Output: %b", $time, i, y);

        i=3'b000; #100;
        i=3'b001; #100;
        i=3'b010; #100;
        i=3'b011; #100;
        i=3'b100; #100;
        i=3'b101; #100;
        i=3'b110; #100;
        i=3'b111; #100;
        $finish;
    end
endmodule
