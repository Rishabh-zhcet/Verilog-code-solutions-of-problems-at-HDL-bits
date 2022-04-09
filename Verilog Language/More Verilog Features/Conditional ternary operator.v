/*
Problem Statement: Given four unsigned numbers, find the minimum. Unsigned numbers can be compared with standard comparison operators (a < b).
                    Use the conditional operator to make two-way min circuits, then compose a few of them to create a 4-way min circuit. 
                    You'll probably want some wire vectors for the intermediate results.

                    Expected solution length: Around 5 lines.
*/

//Solutions:

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0]inter_min1;
    wire [7:0]inter_min2;
    assign inter_min1=(a<b)?(a):(b);
    assign inter_min2=(c<d)?(c):(d);
    assign min=(inter_min1<inter_min2)?(inter_min1):(inter_min2);
    

endmodule
