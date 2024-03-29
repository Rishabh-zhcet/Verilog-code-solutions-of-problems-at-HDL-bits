/*
Problem Statement: Create 8 D flip-flops with active high asynchronous reset. All DFFs should be triggered by the positive edge of clk.

                  Module Declaration
                  module top_module (
                      input clk,
                      input areset,   // active high asynchronous reset
                      input [7:0] d,
                      output [7:0] q
                  );

Solution:
*/

//----------------My Solution-------------------
module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk or posedge areset)
          begin
              if (areset) begin
              // Asynchronous reset when reset goes high
              q <= 1'b0;
            end else begin
              // Assign D to Q on positive clock edge
              q <= d;
            end
          end
endmodule

/*-----------------HDL Bits Solution------------
module top_module(
	input clk,
	input [7:0] d,
	input areset,
	output reg [7:0] q);
	
	// The only difference in code compared to synchronous reset is in the sensitivity list.
	always @(posedge clk, posedge areset)
		if (areset)
			q <= 0;
		else
			q <= d;


	// In Verilog, the sensitivity list looks strange. The FF's reset is sensitive to the
	// *level* of areset, so why does using "posedge areset" work?
	// To see why it works, consider the truth table for all events that change the input 
	// signals, assuming clk and areset do not switch at precisely the same time:
	
	//  clk		areset		output
	//   x		 0->1		q <= 0; (because areset = 1)
	//   x		 1->0		no change (always block not triggered)
	//  0->1	   0		q <= d; (not resetting)
	//  0->1	   1		q <= 0; (still resetting, q was 0 before too)
	//  1->0	   x		no change (always block not triggered)
	
endmodule
*/
