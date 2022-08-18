/*
Problem Statement:Create 8 D flip-flops. All DFFs should be triggered by the positive edge of clk.

Module Declaration
module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);

Solution:
*/

//___________________MY SOLUTION____________
module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);

    always@(posedge clk)
        begin
            q<=d;
        end
    
endmodule


/*
--------------HDL Bits Solution------------
module top_module(
	input clk,
	input [7:0] d,
	output reg [7:0] q);
	
	// Because q is a vector, this creates multiple DFFs.
	always @(posedge clk)
		q <= d;
	
endmodule
*/
