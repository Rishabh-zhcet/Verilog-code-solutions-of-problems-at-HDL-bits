//Problmem Statement: Create a half adder. A half adder adds two bits (with no carry-in) and produces a sum and carry-out.

//Solution: 

module top_module( 
    input a, b,
    output  reg cout, sum );
    
    always
        begin
            {cout,sum}=a+b;
        end
            
endmodule
