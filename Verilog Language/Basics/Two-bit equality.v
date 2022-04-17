/*
Problem Statement: Taken from 2015 midterm question 1k
                    Create a circuit that has two 2-bit inputs A[1:0] and B[1:0], and produces an output z. 
                    The value of z should be 1 if A = B, otherwise z should be 0.

Solution:
*/

module top_module ( input [1:0] A, input [1:0] B, output reg z ); 

    always@*
        begin
            if (A==B)
                z=1'b1;
            else
                z=1'b0;
        end
    
endmodule
