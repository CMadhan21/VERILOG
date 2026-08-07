module encoder_8to3_tb;
    reg [7:0] i;
    wire [2:0] y;

    encoder_8to3 DUT (
        .i(i),
        .y(y)
    );

    initial begin 
        $dumpfile("encoder_8to3_tb.vcd");
        $dumpvars(0, encoder_8to3_tb);

        $monitor("Time: %0t | Input: %b | Output: %b", $time, i, y);

        i=8'b00000001; #100;
        i=8'b00000010; #100;
        i=8'b00000100; #100;
        i=8'b00001000; #100;
        i=8'b00010000; #100;
        i=8'b00100000; #100;
        i=8'b00100000; #100;
        i=8'b01000000; #100;
        i=8'b10000000; #100;
        $finish;
    end
endmodule
