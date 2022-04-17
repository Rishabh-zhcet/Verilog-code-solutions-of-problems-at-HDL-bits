/*
Problem Statement: Create a 4-bit wide, 256-to-1 multiplexer. The 256 4-bit inputs are all packed into a single 1024-bit input vector. 
                    sel=0 should select bits in[3:0], sel=1 selects bits in[7:4], sel=2 selects bits in[11:8], etc.
                    
                    Hint...
                    With this many options, a case statement isn't so useful.
                    Vector indices can be variable, as long as the synthesizer can figure out that the width of the bits being selected is constant. 
                    It's not always good at this. An error saying "... is not a constant" means it couldn't prove that the select width is constant.
                    In particular, in[ sel*4+3 : sel*4 ] does not work.
                    Bit slicing ("Indexed vector part select", since Verilog-2001) has an even more compact syntax.
Solution:
*/
/*-----------------------------------------------------------------------------*/
/*                                  My solution                                */
/*-----------------------------------------------------------------------------*/

module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    
    assign out=in[4*sel+:4];

endmodule

/*-----------------------------------------------------------------------------*/
/*                            HDL bits solution                                */
/*-----------------------------------------------------------------------------*/

module top_module (
	input [1023:0] in,
	input [7:0] sel,
	output [3:0] out
);

	// We can't part-select multiple bits without an error, but we can select one bit at a time,
	// four times, then concatenate them together.
	assign out = {in[sel*4+3], in[sel*4+2], in[sel*4+1], in[sel*4+0]};

	// Alternatively, "indexed vector part select" works better, but has an unfamiliar syntax:
	// assign out = in[sel*4 +: 4];		// Select starting at index "sel*4", then select a total width of 4 bits with increasing (+:) index number.
	// assign out = in[sel*4+3 -: 4];	// Select starting at index "sel*4+3", then select a total width of 4 bits with decreasing (-:) index number.
	// Note: The width (4 in this case) must be constant.

endmodule
