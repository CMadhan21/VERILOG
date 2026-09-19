module bin2bcd (
    input [3:0] bin,
    output reg [7:0] bcd
);
    reg [7:0] temp;
    integer i;

    always @(*) begin
        temp = 8'b0;

        for (i =3 ; i>=0; i=i-1) begin
            if(temp[3:0] >= 4'd5)
                temp[3:0] = temp[3:0] + 4'd3;
            if(temp[7:4] >= 4'd5)
                temp[7:4] = temp[7:4] + 4'd3;    
            temp = temp <<1;
            temp[0] = bin[i];         
        end
        bcd = temp;
    end

endmodule