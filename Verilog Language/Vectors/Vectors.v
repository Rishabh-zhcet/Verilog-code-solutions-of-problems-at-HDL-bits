/*
Problem Statement: Build a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit outputs. 
                   Connect output o0 to the input vector's position 0, o1 to position 1, etc.
*/

//Solution:

module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
    assign {o2,o1,o0}=vec;
    assign outv=vec;

endmodule
