/*
Problem Statement: A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 3-bit input vector.

Solution:
*/

module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    integer i;
    always@(in)
        begin
            out=0;
            for( i=0;i<3;i=i+1)
                out=out+in[i];
        end
endmodule
