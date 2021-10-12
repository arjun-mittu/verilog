module demux14(s1,s2,i,e,x,y,z,w);
    input s1,s2,i,e;
    output x,y,z,w;
    assign x=i&e&~s1&~s2;
    assign y=i&e&~s1&s2;
    assign z=i&e&s1&~s2;
    assign w=i&e&s1&s2;
endmodule

module test;
    reg s11,s21,i1,e1;
    wire x1,y1,z1,w1;
    demux14 h1(s11,s21,i1,e1,x1,y1,z1,w1);
    initial begin
        $display("s1\ts2\te\ti\tx\ty\tz\tw");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t",s11,s21,e1,i1,x1,y1,z1,w1);
        i1=0;e1=1;s11=0;s21=0;
       #10 i1=1;e1=1;s11=1;s21=1;

    end
endmodule


