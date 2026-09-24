module comparator_4bit_tb;
    reg [3:0] A,B;
    wire grt,eq,less;

    comparator_4bit uut (.A(A), .B(B), .grt(grt), .eq(eq), .less(less));
    
    initial begin
        $monitor("A=%b | B=%b | grt=%b eq=%b less=%b",A,B,grt,eq,less);
        $dumpfile("dump.vcd");
        $dumpvars(0, comparator_4bit_tb);

        
        A=4'b0011 ;
        B=4'b1001 ;
        #10;

        A=4'b1011 ;
        B=4'b1001 ;
        #10;

        A=4'b0001 ;
        B=4'b1001 ;
        #10;

        $finish;

    end
endmodule