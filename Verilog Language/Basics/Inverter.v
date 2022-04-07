/* 
Problem Statement: Create a module that implements a NOT gate.
This circuit is similar to wire, but with a slight difference. When making the connection from the wire in to the wire out we're going to implement an inverter (or "NOT-gate") instead of a plain wire.
*/

//Solution: 

module top_module( input in, output out );
assign out=~in;
endmodule
