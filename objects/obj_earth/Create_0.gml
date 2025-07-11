/// @description Init

event_inherited();
set_properties(16);

building_ui = true;					// This body can create buildings
grav_gun = false;					// Is the gravity gun being used
grav_gun_radius = 8;				// The size of the gravity gun affecting area	
grav_gun_attempt = false;			// Is the gravity gun trying to be used
power_radius = 256;					// The range of earth's power
spawn_rate = 300;					// How many frames in between producing hydrogen
mouse_in_power_range = false;