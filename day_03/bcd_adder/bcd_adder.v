module bcd_adder(
    input [3:0]A,B,
    input cin,
output reg [3:0] Sout,
    output reg Cout
);

    reg [4:0] S_temp;

    always@(*) begin
        
        S_temp = A + B + cin;

        if(S_temp > 9) begin
            S_temp = S_temp + 5'd6;
        end

        Sout = S_temp[3:0];
        Cout = S_temp[4];
    end
endmodule