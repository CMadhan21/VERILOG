module rca_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire  Cout;

    rca uut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

    integer i;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,rca_tb);
        $monitor("A=%b B=%b Cin=%b | S=%b Cout=%b",A,B,Cin,S,Cout);

        for (i =0 ;i<512 ;i=i+1 ) begin
            {A,B,Cin} = i; #10;
        end
        $finish;
    end
endmodule