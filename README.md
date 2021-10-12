# verilog
to compile a code - iverilog -o output_file_name input_filename.v
                    or   iverilog input_filename.v
to run a code - vvp output_file_name.out

to create wave form:
  in initial begin write
  $dumpfile("dump1.vcd");
  $dumpvars(0,test);  //test- here is simmulation module name

to get wave:
  gtkwave dump1.vcd
