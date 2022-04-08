/*
Problem statement: In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in 
                   and produces a carry-out and 16-bit sum. You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.
                   Connect the modules together as shown in the diagram below. The provided module add16 has the following declaration:
                   
                   module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
*/

//Solution:

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin_1,cin_2,cin,cout_1,cout_2,cout;
    wire [15:0] a1,a2,b1,b2,sum_1,sum_2,sum_LSB,sum_MSB;
    assign cin_1=1'b0;
    assign cin_2=1'b1;
    assign cin=1'b0;
    assign {a2,a1}=a;
    assign {b2,b1}=b;
    
    add16 U_1(a1,b1,cin,sum_LSB,cout);
    add16 U_2(a2,b2,cin_1,sum_1,cout_1);
    add16 U_3(a2,b2,cin_2,sum_2,cout_2);
    
    always@(sum_1,sum_2,cout)
        begin
            case(cout)
                1'b0: sum_MSB=sum_1;
                1'b1: sum_MSB=sum_2;
            endcase
        end
    
    assign sum= {sum_MSB,sum_LSB};
                
endmodule
