/* 
 * Do not change Module name 
*/
module fulladder(a,b,c,sum,carry);
    output sum,carry;
    input a,b,c;
    assign carry=(a&b)|(b&c)|(c&a);
    assign sum=(a^b)^c;
endmodule
module test;
    reg a1,b1,c1;
    wire carry1,sum1;
    fulladder h1(a1,b1,c1,sum1,carry1);
    initial begin
        $display("a\tb\tc\tcarry\tsum");
        $monitor("%b\t%b\t%b\t%b\t%b",a1,b1,c1,carry1,sum1);
        a1=0;b1=0;c1=1;
        #10
        a1=1;b1=1;c1=1;
        
    end
endmodule