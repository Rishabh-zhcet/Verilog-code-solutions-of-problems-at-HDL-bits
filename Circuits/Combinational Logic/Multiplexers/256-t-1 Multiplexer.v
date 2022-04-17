/*
Problem Statement: Create a 1-bit wide, 256-to-1 multiplexer. The 256 inputs are all packed into a single 256-bit input vector.
                    sel=0 should select in[0], sel=1 selects bits in[1], sel=2 selects bits in[2], etc.
Solution:
*/
/*-----------------------------------------------------------------------------*/
/*                                  My solution                                */
/*-----------------------------------------------------------------------------*/

module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    
    always@(sel)
        begin
                out= in[sel];
        end

endmodule

/*-----------------------------------------------------------------------------*/
/*                            HDL bits solution                                */
/*-----------------------------------------------------------------------------*/

module top_module (
	input [255:0] in,
	input [7:0] sel,
	output  out
);

	// Select one bit from vector in[]. The bit being selected can be variable.
	assign out = in[sel];
	
endmodule
