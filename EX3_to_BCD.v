//not working properly
module BCD2Ex3(a,b,c,d,w,x,y,z);
         input a,b,c,d;
         output w,x,y,z;
          assign w= (a&b) | (a&c&d);
          assign x=(~b&~c)|(~b&~d)|(b&c&d);
          assign y= (~c^d)|(c&~d);
          assign z=~d;
endmodule
module test;
      reg a1,b1,c1,d1;
      wire w1, x1, y1, z1;
      BCD2Ex3 objt(a1,b1,c1,d1,w1,x1,y1,z1);
      initial
      begin
        //$dumpfile("dump1.vcd");
        //$dumpvars(0,test);
        $display("a\tb\tc\td\tw\tx\ty\tz");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",a1,b1,c1,d1,w1,x1,y1,z1);
       a1=0; b1=0; c1=1;d1=1;
       #10 a1=0; b1=1; c1=0;d1=0;
       #10 a1=0; b1=1; c1=0;d1=1;
       #10 a1=0; b1=1; c1=1;d1=0;
       #10 a1=0; b1=1; c1=1;d1=1;
       #10 a1=1; b1=0; c1=0;d1=0;
       #10 a1=1; b1=0; c1=0;d1=1;
       #10 a1=1; b1=0; c1=1;d1=0;
       #10 a1=1; b1=0; c1=1;d1=1;
       #10 a1=1; b1=1; c1=0;d1=0;
    //#10 a1=1'b1; b1=1’b0;
     end
endmodule


