/*
Problem Statement: Create a 100-bit binary adder. The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out.

                    Expected solution length: Around 1 line.

Solution:
*/

//____________________MY SOLUTION____________________
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum 
);
   
    always
       begin
           {cout,sum}= a+b+cin;
       end
    
endmodule

/*_________________HDL BITS SOLUTION__________________

module top_module (
	input [99:0] a,
	input [99:0] b,
	input cin,
	output cout,
	output [99:0] sum
);

	// The concatenation {cout, sum} is a 101-bit vector.
	assign {cout, sum} = a+b+cin;

endmodule

*/
