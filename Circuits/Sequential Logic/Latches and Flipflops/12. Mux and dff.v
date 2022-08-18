/* 
Problem Statement: Consider the n-bit shift register circuit shown below:

                    Exams 2014q4.png

                    Write a Verilog module named top_module for one stage of this circuit, including both the flip-flop and multiplexers.


                    Module Declaration
                    module top_module (
                        input clk,
                        input w, R, E, L,
                        output Q
                    );

Solution: 
*/
module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    always@(posedge clk)
        begin
            Q<=L?R:(E?w:Q);
        end

endmodule
