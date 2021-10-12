/* 
 * Do not change Module name 
*/
module fullsub(a,b,bin,borr,diff);
    output borr,diff;
    input a,b,bin;
    assign borr=~a&bin|~a&b|b&bin;
    assign diff=(a^b)^bin;
endmodule
module test;
    reg a1,b1,bin1;
    wire borr1,diff1;
    fullsub h1(a1,b1,bin1,borr1,diff1);
    initial begin
        $display("a\tb\tbin\tdiff\tborr");
        $monitor("%b\t%b\t%b\t%b\t%b",a1,b1,bin1,diff1,borr1);
        a1=0;b1=0;bin1=0;
        #10
        a1=0;b1=0;bin1=1;
        #10
        a1=0;b1=1;bin1=0;
        #10
        a1=0;b1=1;bin1=1;
        #10
        a1=1;b1=0;bin1=0;
        #10
        a1=1;b1=0;bin1=1;
        #10
        a1=1;b1=1;bin1=0;
        #10
        a1=1;b1=1;bin1=1;
        
    end
endmodule