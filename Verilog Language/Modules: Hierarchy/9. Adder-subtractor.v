/*
Problem Statement: Build the adder-subtractor below.

                    You are provided with a 16-bit adder module, which you need to instantiate twice:

                    module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

                    Use a 32-bit wide XOR gate to invert the b input whenever sub is 1. (This can also be viewed as b[31:0] XORed with sub replicated 32 times. 
                    
                    See replication operator.). Also connect the sub input to the carry-in of the adder.
*/

//Solution:

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] xor_op;
    wire cout_1,cout_2;
    wire [15:0] a1,a2,xor_op1,xor_op2,sum_1,sum_2;
    
    assign {a2,a1}=a;
    assign xor_op= {32{sub}} ^ b;
    assign {xor_op2,xor_op1}=xor_op;
    
    
    
    add16 U_1(a1,xor_op1,sub,sum_1,cout_1);
    add16 U_2(a2,xor_op2,cout_1,sum_2,cout_2);
    
    assign sum={sum_2,sum_1};
   

endmodule
