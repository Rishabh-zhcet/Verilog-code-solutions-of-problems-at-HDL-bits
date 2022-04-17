/*
Problem Statement: Create a combinational circuit that implements the below truth table.

                  ____________________________
                  Row	      Inputs	  Outputs
                  number	x3	x2	x1	  f
                  ____________________________
                  0	      0	  0 	0	    0
                  1	      0  	0 	1   	0
                  2	      0 	1 	0   	1
                  3	      0	  1	  1   	1
                  4     	1 	0 	0   	0
                  5	      1 	0 	1   	1
                  6	      1	  1	  0	    0
                  7     	1 	1 	1   	1
                  ____________________________
                  
Solution:
*/
/*-----------------------------------------------------------------------------*/
/*                                  My solution                                */
/*-----------------------------------------------------------------------------*/

module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output reg f   // one output
);
    always@*
        begin
    	case({x3,x2,x1})
                3'b000: f=1'b0;
                3'b001: f=1'b0;
                3'b010: f=1'b1;
                3'b011: f=1'b1;
                3'b100: f=1'b0;
                3'b101: f=1'b1;
                3'b110: f=1'b0;
                3'b111: f=1'b1;
                default: begin end
          
        endcase
        end
        
endmodule

/*-----------------------------------------------------------------------------*/
/*                            HDL bits solution                                */
/*-----------------------------------------------------------------------------*/

module top_module (
	input x3,
	input x2,
	input x1,
	output f
);
	// This truth table has four minterms. 
	assign f = ( ~x3 & x2 & ~x1 ) | 
				( ~x3 & x2 & x1 ) |
				( x3 & ~x2 & x1 ) |
				( x3 & x2 & x1 ) ;
				
	// It can be simplified, by boolean algebra or Karnaugh maps.
	// assign f = (~x3 & x2) | (x3 & x1);
	
	// You may then notice that this is actually a 2-to-1 mux, selected by x3:
	// assign f = x3 ? x1 : x2;
	
endmodule
