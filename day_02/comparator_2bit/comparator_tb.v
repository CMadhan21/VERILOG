module comparator_tb;

    reg [1:0]A;
    reg [1:0]B;
    wire gt,eq,lt;
    integer i;

    comparator uut (.A(A), .B(B), .gt(gt), .eq(eq), .lt(lt));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,comparator_tb);
        
        $monitor("A=%b | B=%b | gt=%b eq=%b lt=%b",A,B,gt,eq,lt);

        for (i =0 ;i<16 ;i=i+1 ) begin
            {A,B} = i; #10;
        end
        $finish;
    end
endmodule