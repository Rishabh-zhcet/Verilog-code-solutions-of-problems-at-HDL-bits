/*
Problem Statement: You are provided with a BCD one-digit adder named bcd_fadd that adds two BCD digits and carry-in, and produces a sum and carry-out.

                    module bcd_fadd (
                        input [3:0] a,
                        input [3:0] b,
                        input     cin,
                        output   cout,
                        output [3:0] sum );
                    Instantiate 100 copies of bcd_fadd to create a 100-digit BCD ripple-carry adder. 
                    Your adder should add two 100-digit BCD numbers (packed into 400-bit vectors) and a carry-in to produce a 100-digit sum and carry out.
  */

//Solution:

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] carry;
    genvar i;
    bcd_fadd U0( a[3:0],b[3:0],cin,carry[0],sum[3:0]);
    
    generate
        for (i=1;i<100;i=i+1)
            begin: gen
                bcd_fadd Ui( a[((i+1)*4)-1:(i*4)],b[((i+1)*4)-1:(i*4)],carry[i-1],carry[i],sum[((i+1)*4)-1:(i*4)]);
            end :gen
    endgenerate
    
    assign cout=carry[99];

endmodule
