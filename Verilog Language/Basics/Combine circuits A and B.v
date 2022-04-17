/*
Problem Statement:Taken from 2015 midterm question 4

                        See mt2015_q4a and mt2015_q4b for the submodules used here. 
                        The top-level design consists of two instantiations each of subcircuits A and B, as shown below.

Solution:
*/

module top_module (input x, input y, output z);
wire w1,w2,w3,w4,w5,w6;
    //module instantiations
    A IA1(x,y,w1);
    B IB1(x,y,w2);
    A IA2(x,y,w3);
    B IB2(x,y,w4);
    
    assign w5= w1 || w2;
    assign w6= w3 && w4;
    assign z = w5  ^ w6;
    
endmodule

module A(input x, input y, output reg z);
always@*
    begin
        z = (x^y) & x;
    end
endmodule

module B( input x, input y, output z );

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
