/*
Problem Statement: Implement the following circuit:

                    Exams m2014q4d.png

                    Module Declaration
                    module top_module (
                        input clk,
                        input in, 
                        output out);
                        
Solution:
*/

module top_module (
    input clk,
    input in, 
    output out);
    
    reg d1,d2;
    always@(posedge clk)
        begin
    	out<=out^in;
        end
endmodule
