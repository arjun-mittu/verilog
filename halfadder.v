/* 
 * Do not change Module name 
*/
module halfadder(a,b,sum,carry);
    output sum,carry;
    input a,b;
    assign carry=a&b;
    assign sum=a^b;
endmodule
module test;
    reg a1,b1;
    wire carry1,sum1;
    halfadder h1(a1,b1,sum1,carry1);
    initial begin
        $display("a\tb\tcarry\tsum");
        $monitor("%b\t%b\t%b\t%b",a1,b1,carry1,sum1);
        a1=0;b1=0;
        #10
        a1=1;b1=0;
        
    end
endmodule