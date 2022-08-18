/* 
Problem Statement: Implement the following circuit:

                    Exams m2014q4c.png

                    Module Declaration
                    module top_module (
                        input clk,
                        input d, 
                        input r,   // synchronous reset
                        output q);

Solution:
*/
module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output q);
    
    always@(posedge clk)
        begin
            if(r)
                q<=0;
            else
                q<=d;
        end

endmodule
