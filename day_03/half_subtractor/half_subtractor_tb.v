module half_subtractor_tb;
    reg A,B;
    wire D,BO;
    integer i;

    half_subtractor uut (.A(A), .B(B), .Diff(D), .Borrow(BO));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,half_subtractor_tb);

        $monitor("A=%b | B=%b | Diff= %b Borrow=%b",A,B,D,BO);
        for (i = 0;i<4 ;i=i+1 ) begin
            {A,B} = i; #10;
        end
    end

endmodule