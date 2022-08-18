/*
Problem Statemnet: Implement the following circuit:

                    Exams m2014q4a.png

                    Note that this is a latch, so a Quartus warning about having inferred a latch is expected.

                    Module Declaration
                    module top_module (
                        input d, 
                        input ena,
                        output q);
                        
Solution:
*/
module top_module (
    input d, 
    input ena,
    output q);
    
    always@(ena,d)
        begin
            if(ena)
                q<=d;

        end
endmodule
