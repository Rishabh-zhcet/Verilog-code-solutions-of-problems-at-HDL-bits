/*
Problem Statement: Taken from 2015 midterm question 4
                   Circuit B can be described by the following simulation waveform:
                   
Solution:
*/

module top_module ( input x, input y, output z );

    always@*
        begin
            case({x,y})
                2'b00: z=1'b1;
                2'b10: z=1'b0;
                2'b01: z=1'b0;
                2'b11: z=1'b1;
            endcase
        end
                
endmodule
