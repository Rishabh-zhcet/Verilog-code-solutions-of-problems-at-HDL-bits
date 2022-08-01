/*
Problem Statement: Now that you know how to build a full adder, make 3 instances of it to create a 3-bit binary ripple-carry adder. 
                     The adder adds two 3-bit numbers and a carry-in to produce a 3-bit sum and carry out.
                     To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder.
                     cout[2] is the final carry-out from the last full adder, and is the carry-out you usually see.
*/

//Solution:

module top_module( 
    input [2:0] a, b,
    input cin,
    output wire [2:0] cout,
    output [2:0] sum );
 
   	genvar i;
    fulladder U1(a[0],b[0],cin,sum[0],cout[0]);
    generate
        for(i=1;i<2;i=i+1)
            begin:gen
                fulladder Ui(a[i],b[i],cout[i-1],sum[i],cout[i]);
            end: gen
    endgenerate
    
    fulladder U3(a[2],b[2],cout[1],sum[2],cout[2]);
    
endmodule
    
    module fulladder(
		input a,b,cin,
        output sum,carry
    );
        
    always 
        begin
            {carry,sum}=a+b+cin;
        end
    endmodule

