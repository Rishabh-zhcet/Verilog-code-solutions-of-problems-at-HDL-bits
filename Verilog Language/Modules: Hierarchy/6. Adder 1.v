/*
Problem Statement: You are given a module add16 that performs a 16-bit addition. Instantiate two of them to create a 32-bit adder. 
                   One add16 module computes the lower 16 bits of the addition result, while the second add16 module computes the upper
                   16 bits of the result, after receiving the carry-out from the first adder. Your 32-bit adder does not need to handle
                   carry-in (assume 0) or carry-out (ignored), but the internal modules need to in order to function correctly.
                   (In other words, the add16 module performs 16-bit a + b + cin, while your module performs 32-bit a + b).

                    Connect the modules together as shown in the diagram below. The provided module add16 has the following declaration:
                    module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
*/

//Solution:

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] a1,a2, b1,b2, sum1,sum2;
    wire cin,cout;
    wire cout_1;
    assign {a2,a1} =a;
    assign {b2,b1} =b;
 	assign cin=1'b0;
    add16 U_1(a1,b1,cin,sum1,cout_1);
    add16 U_2(a2,b2,cout_1,sum2,cout);
    assign sum={sum2,sum1};

endmodule
