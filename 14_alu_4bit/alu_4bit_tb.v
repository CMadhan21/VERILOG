module tb_alu_4bit;

    reg  [3:0] A, B;
    reg  [2:0] sel;

    wire [3:0] Y;
    wire       carry;
    wire       zero;

    alu_4bit uut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y),
        .carry(carry),
        .zero(zero)
    );

    initial begin

        $monitor("Time=%0t A=%b B=%b SEL=%b Y=%b Carry=%b Zero=%b",
                $time, A, B, sel, Y, carry, zero);

        A = 4'b0101;  
        B = 4'b0011; 

        sel = 3'b000;  #10;  
        sel = 3'b001;  #10;  
        sel = 3'b010;  #10;  
        sel = 3'b011;  #10;  
        sel = 3'b100;  #10; 
        sel = 3'b101;  #10;  
        sel = 3'b110;  #10;  
        sel = 3'b111;  #10;  

        $finish;
    end

endmodule