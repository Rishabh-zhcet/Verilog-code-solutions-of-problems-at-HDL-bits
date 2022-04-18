/*
Problem statement: In this exercise, create one instance of module mod_a, then connect the module's three pins (in1, in2, and out) to your top-level module's 
                   three ports (wires a, b, and out). The module mod_a is provided for you — you must instantiate it.
*/

//Solution:

module top_module ( input a, input b, output out );

    mod_a instance1 ( a,b,out );
endmodule
