/* 
 * Do not change Module name 
*/
module myand(x,a,b);
    output x;
    input a,b;
    assign x=a&b;
endmodule

module simand;
    reg a,b;
    wire x;
    myand ma(x,a,b);
    initial begin
        a=1'b0;
        b=1'b0;
        #10
        a=1'b1;
        b=1'b1;
        #10
        a=1'b0;
        b=1'b1;
        #10
        a=1'b1;
        b=1'b0;
        #10
        $finish;
    end
    initial begin
        $monitor("a=%d,b=%d,o=%d\n",a,b,x);
    end
endmodule