module Decoder24(a,b,e,x,y,z,w);
        input a,b,e;
        output x,y,z,w;
        assign x=e&a&b;
        assign y=e&a&~b;
        assign z=e&~a&b;
        assign w=e&~a&~b;
endmodule
module test;
      reg a1,b1,e1;
      wire x1,y1,z1,w1;
      Decoder24 objct(a1,b1,e1,x1,y1,z1,w1);
      initial begin
        $dumpfile("dump1.vcd");
        $dumpvars(0,test);
         //$display(“  Inputs    |    Outputs ");
        $display("e\ta\tb\tx\ty\tz\tw");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b",e1,a1,b1,x1,y1,z1,w1);
       e1=1;a1=0;b1=0;
       #10 e1=1;a1=1;b1=0;
       #10 e1=1;a1=0;b1=1; 
       #10 e1=1;a1=1;b1=1;
     end
endmodule


