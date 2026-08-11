module bcd_adder_tb;
    reg [3:0]A,B;
    reg cin;
    wire [3:0] Sout;
    wire Cout;

    bcd_adder uut(A,B,cin,Sout,Cout);

     initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,bcd_adder_tb);

        $monitor("A=%d B=%d Cin=%b | Sum=%d Cout=%b", A, B, cin, Sout, Cout);

        A = 4'd3; B = 4'd5; cin = 0; #100;
        A = 4'd4; B = 4'd6; cin = 0; #100;
        A = 4'd9; B = 4'd9; cin = 0; #100;
        A = 4'd2; B = 4'd7; cin = 1; #100;
        A = 4'd0; B = 4'd9; cin = 1; #100;
 $finish;
 end
endmodule


