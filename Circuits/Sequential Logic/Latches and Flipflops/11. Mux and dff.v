/*
Problem Statement: Taken from ECE253 2015 midterm question 5

                    Consider the sequential circuit below:

                    Mt2015 muxdff.png

                    Assume that you want to implement hierarchical Verilog code for this circuit, using three instantiations of a submodule that has a
                    flip-flop and multiplexer in it. Write a Verilog module (containing one flip-flop and multiplexer) named top_module for this submodule.

                    Module Declaration
                    module top_module (
                      input clk,
                      input L,
                      input r_in,
                      input q_in,
                      output reg Q);

Solution: 
*/
module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    
    always@(posedge clk)
        begin
            Q<=L?r_in:q_in;
        end
endmodule
