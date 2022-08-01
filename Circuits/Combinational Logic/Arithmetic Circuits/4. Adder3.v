/*
Problem Statement: Implement the following circuit:

Solution:
*/

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [2:0] cin;
    
    
    FA DUT1(x[0],y[0],0,sum[0],cin[0]);
    FA DUT2(x[1],y[1],cin[0],sum[1],cin[1]);
    FA DUT3(x[2],y[2],cin[1],sum[2],cin[2]);
    FA DUT4(x[3],y[3],cin[2],sum[3],sum[4]);
    
endmodule

module FA(
    input a,b,cin,
    output sum, cout
);
    
    always 
        begin
            {cout,sum}=a+b+cin;
        end
    
endmodule
    
