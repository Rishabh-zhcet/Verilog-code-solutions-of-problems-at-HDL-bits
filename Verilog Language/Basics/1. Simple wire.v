/*
Problem Statement: Create a module with one input and one output that behaves like a wire.
Solution:
*/
/*-----------------------------------------------------------------------------*/
/*                                  My solution                                */
/*-----------------------------------------------------------------------------*/

module top_module( input in, output out );
assign out=in;
endmodule

/*-----------------------------------------------------------------------------*/
/*                            HDL bits solution                                */
/*-----------------------------------------------------------------------------*/

module top_module( input in, output out );
	
	assign out = in;
	// Note that wires are directional, so "assign in = out" is not equivalent.
	
endmodule
