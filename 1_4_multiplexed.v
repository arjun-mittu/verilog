module mux41(s1,s2,a,b,c,d,x);
    input s1,s2,a,b,c,d;
    output x;
    assign x=~s1&~s2&a|~s1&s2&b|s1&~s2&c|s1&s2&d;
endmodule
module test;
    reg s11,s21,a1,b1,c1,d1;
    wire x1;
    mux41 mm(s11,s21,a1,b1,c1,d1,x1);
    initial begin
        //$dumpfile("dum1.vcd");
        //$dumpvars(0,test);
        $display("s1\ts2\ta\tb\tc\td\tx");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t",s11,s21,a1,b1,c1,d1,x1);
        a1=1;b1=0;c1=0;d1=0; s11=0;s21=0;       
        #100 a1=0;b1=1;c1=0;d1=0;s11=0;s21=1;
        #100 a1=0;b1=0;c1=1;d1=0;s11=1;s21=0;
        #100 a1=0;b1=0;c1=0;d1=0;s11=1;s21=1;
    end
endmodule