/*
Problem Statement: Create 8 D flip-flops with active high synchronous reset. All DFFs should be triggered by the positive edge of clk.

                    Module Declaration
                    module top_module (
                        input clk,
                        input reset,            // Synchronous reset
                        input [7:0] d,
                        output [7:0] q
                    );
                    

Solution:
*/

module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    always@(posedge clk)
        begin
            if(!reset)
                q<=d;
            else
                q<=0;
        end

endmodule
