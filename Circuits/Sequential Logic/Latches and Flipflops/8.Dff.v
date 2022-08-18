/* 
Problem Statement: Implement the following circuit:

                  Exams m2014q4b.png

                  Module Declaration
                  module top_module (
                      input clk,
                      input d, 
                      input ar,   // asynchronous reset
                      output q);

Solution:
*/
module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    
    always@(posedge clk or posedge ar)
        begin
            if(ar)
                q<=0;
            else
                q<=d;
        end

endmodule
