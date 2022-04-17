/* 
Problem Statement: A heating/cooling thermostat controls both a heater (during winter) and an air conditioner (during summer). 
                  Implement a circuit that will turn on and off the heater, air conditioning, and blower fan as appropriate.
                  The thermostat can be in one of two modes: heating (mode = 1) and cooling (mode = 0). 
                  In heating mode, turn the heater on when it is too cold (too_cold = 1) but do not use the air conditioner.
                  In cooling mode, turn the air conditioner on when it is too hot (too_hot = 1), but do not turn on the heater. 
                  When the heater or air conditioner are on, also turn on the fan to circulate the air. In addition, 
                  the user can also request the fan to turn on (fan_on = 1), even if the heater and air conditioner are off.
                  Try to use only assign statements, to see whether you can translate a problem description into a collection of logic gates.
Solution:
*/
/*-----------------------------------------------------------------------------*/
/*                                  My solution                                */
/*-----------------------------------------------------------------------------*/
module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    assign heater= (mode && too_cold) && (~(~mode && too_hot));
    assign aircon= (~(mode && too_cold)) && (~mode && too_hot);
    assign fan= heater || aircon || fan_on;

endmodule

/*-----------------------------------------------------------------------------*/
/*                            HDL bits solution                                */
/*-----------------------------------------------------------------------------*/

module top_module(
	input too_cold, 
	input too_hot,
	input mode,
	input fan_on,
	output heater,
	output aircon,
	output fan
);
	// Reminder: The order in which you write assign statements doesn't matter. 
	// assign statements describe circuits, so you get the same circuit in the end
	// regardless of which portion you describe first.

	// Fan should be on when either heater or aircon is on, and also when requested to do so (fan_on = 1).
	assign fan = heater | aircon | fan_on;
	
	// Heater is on when it's too cold and mode is "heating".
	assign heater = (mode & too_cold);
	
	// Aircon is on when it's too hot and mode is not "heating".
	assign aircon = (~mode & too_hot);
	
	// * Unlike real thermostats, there is no "off" mode here.
	
endmodule
