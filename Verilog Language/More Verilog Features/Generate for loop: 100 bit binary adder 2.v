/*
Problem Statement: Create a 100-bit binary ripple-carry adder by instantiating 100 full adders. 
                    The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out.
                    To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. 
                    cout[99] is the final carry-out from the last full adder, and is the carry-out you usually see.
*/

//Solution:

module FA(
    input a_,b_,cin_,
    output sum_,carry_);
    
    assign {carry_,sum_}= a_+b_+cin_;
    
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    genvar i;
    
    // assign {cout[0],sum[0]}=a[0]+b[0]+cin;   //we can use this also
    FA U0(a[0],b[0],cin,sum[0],cout[0]);  // or we can instantiate the module
     
    generate
        for (i=1;i<100;i=i+1) 
            begin:gen  //":gen" is important without this we are not able to get desired output
            FA Ui(a[i],b[i],cout[i-1],sum[i],cout[i]);
            end : gen
    endgenerate
    

endmodule
