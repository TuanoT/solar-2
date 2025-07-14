/// @description Init

event_inherited();
set_properties(16);

building_ui = true;					// This body can create buildings
upgrades_ui = true;					// This body has upgardes
grav_gun = false;					// Is the gravity gun being used
grav_gun_radius = 8;				// The size of the gravity gun affecting area	
grav_gun_attempt = false;			// Is the gravity gun trying to be used
grav_gun_burn_rate = 60;
power_radius = 256;					// The range of earth's power
spawn_rate = 300;					// How many frames in between producing hydrogen
mouse_in_power_range = false;


// Create hydrogen generator upgrade
var _inst = instance_create_depth(x, y, depth-1, obj_earth_hydrogen_generator);
ugrades[0] = _inst;
_inst.parent = self;



function burn_hydrogen() {
	pop_item(4, 1);
	play_sound(x, y, snd_hydrogen_burn, .5, .7, "diminished");	
}