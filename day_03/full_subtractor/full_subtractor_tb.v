module full_subtractor_tb;
    reg a,b,cin;
    wire D,BO;
    integer i;

    full_subtractor uut(
        .a(a),
        .b(b),
        .cin(cin),
        .Diff(D),
        .Borrow(BO)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,full_subtractor_tb);
    end

    initial begin
        
        $monitor("Time: %0t | a=%b, b=%b, cin=%b | Diff=%b, Borrow=%b", $time, a, b,cin, D, BO);
        a=0; b=0; cin=0;
        for(i=0; i<8; i=i+1) begin
            {a,b,cin} = i;
            #10;
        end
        $finish;
    end
endmodule