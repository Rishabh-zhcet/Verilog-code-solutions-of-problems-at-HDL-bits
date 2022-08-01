// Problem Statement: Create a full adder. A full adder adds three bits (including carry-in) and produces a sum and carry-out.

//Solution:

module top_module( 
    input a, b, cin,
    output cout, sum );

    always
        begin
            {cout,sum}=a+b+cin;
        end
endmodule
