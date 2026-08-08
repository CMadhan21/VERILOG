module demux_tb;
    reg en, s, I;
    wire [1:0]y;
    integer i;

    demux uut (.en(en), .s(s),.I(I),.y(y));

    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, demux_tb);

        $monitor("Time=%0t | en=%b s=%b I=%b | y=%b",$time, en, s, I, y);
        
        en=1'b0; s=1'b0; I=1'b0;

        for (i=0 ; i<8 ; i=i+1 ) begin
            {en,s,I} = i; #10;
        end
        $finish;
    end

endmodule

