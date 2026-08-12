module cla_tb;
    reg [3:0]A,B;
    reg Cin;
    wire [3:0]S;
    wire Cout;

    integer i;

    cla uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

  initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, cla_tb);

    $monitor("Time=%0t | A=%b B=%b Cin=%b | S=%b Cout=%b",
             $time, A, B, Cin, S, Cout);

    for (i = 0; i < 512; i = i + 1) begin
        {A, B, Cin} = i;
        #10;
    end

    $finish;

end

endmodule