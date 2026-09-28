module multiplier_array_4bit_tb;

    reg [3:0] A, B;
    wire [7:0] P;

    multiplier_array_4bit uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, multiplier_array_4bit_tb);

        $monitor("A=%b (%0d) | B=%b (%0d) | P=%b (%0d)",
                 A, A, B, B, P, P);

        A = 4'b0011;
        B = 4'b0010;
        #10;

        A = 4'b1010;
        B = 4'b0011;
        #10;

        A = 4'b1111;
        B = 4'b1111;
        #10;

        A = 4'b0101;
        B = 4'b0100;
        #10;

        A = 4'b1001;
        B = 4'b0110;
        #10;

        $finish;

    end

endmodule