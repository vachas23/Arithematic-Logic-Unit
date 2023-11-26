module ALU(x,y,sel,a,b,A,B,C,D,E,F,G,H);
    input [1:0]sel;
    input a,b;
    output x,y,E,G,A,B,C,D,F,H;
    reg E,G;
    assign A =a^b;
    assign B =a&b;
    assign C =a^b;
    assign D =a&(~b);
    always @(a,b)
    begin
        if(a==b)
        E<=1'b1;
        else
        E<=1'b0;
    end
    always @(a,b)
    begin
        if(a>b)
        G<=1'b1;
        else
        G<=1'b0;
    end
    assign F=a&b;
    assign H=~(a&b);
    assign x =sel[1]?(sel[0]?G:E):(sel[0]?C:A);
    assign y =sel[1]?(sel[0]?H:F):(sel[0]?D:B);
endmodule
    