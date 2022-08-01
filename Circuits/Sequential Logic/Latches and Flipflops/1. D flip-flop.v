/*
Problem Statement: A D flip-flop is a circuit that stores a bit and is updated periodically, at the (usually) positive edge of a clock signal.

                    D flip-flops are created by the logic synthesizer when a clocked always block is used (See alwaysblock2).
                    A D flip-flop is the simplest form of "blob of combinational logic followed by a flip-flop" where the combinational logic portion is just a wire.

                    Create a single D flip-flop.

Solution:
*/

//_______________MY SOLUTION__________________
module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//

    always@(posedge clk)
        begin
            q<=d;
        end

endmodule

/*__________________HDL BITS SOLUTION____________

module top_module(
	input clk,
	input d,
	output reg q);
	
	// Use non-blocking assignment for edge-triggered always blocks
	always @(posedge clk)
		q <= d;

	// Undefined simulation behaviour can occur if there is more than one edge-triggered
	// always block and blocking assignment is used. Which always block is simulated first?
	
endmodule

*/
