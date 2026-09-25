module comparator_8bit_tb;

    reg [7:0] A, B;
    wire grt, eq, less;

    comparator_8bit uut (
        .A(A),
        .B(B),
        .grt(grt),
        .eq(eq),
        .less(less)
    );

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, comparator_8bit_tb);

        $monitor("A=%b | B=%b | grt=%b | eq=%b | less=%b", A, B, grt, eq, less);

        A = 8'b00110011;
        B = 8'b10011001;
        #10;

        A = 8'b10110011;
        B = 8'b10011001;
        #10;

        A = 8'b10011001;
        B = 8'b10011001;
        #10;

        A = 8'b00010001;
        B = 8'b10011001;
        #10;

        $finish;

    end

endmodule