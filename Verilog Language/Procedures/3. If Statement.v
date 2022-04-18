/*
Problem Statement: Build a 2-to-1 mux that chooses between a and b. Choose b if both sel_b1 and sel_b2 are true. Otherwise, choose a.
                    Do the same twice, once using assign statements and once using a procedural if statement.
                  --------------------------
                  sel_b1	sel_b2	out_assign
                                  out_always
                  --------------------------
                  0	        0	        a
                  0	        1       	a
                  1	        0       	a
                  1       	1       	b
                  --------------------------

*/

//Solution:

// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    assign out_assign= (sel_b1==1 && sel_b2==1)? b:a;
    always@(*)
        begin
            if (sel_b1==1 && sel_b2==1)
                out_always= b;
            else
                out_always= a;
        end

endmodule
