/// @description 

event_inherited();

// Grav Gun
grav_gun = false;	
grav_gun_attempt = false;

if (mouse_check_button(mb_right) and global.selected_building == -1) {
	
	if mouse_in_power_range {
	
		// Burn initial hydrogen when clicking
		if mouse_check_button_pressed(mb_right) and get_inventory_item(4, 1) != -1 {
			burn_hydrogen();
			alarm[0] = grav_gun_burn_rate;
		}
	} else {
		grav_gun_attempt = true;	
	}
	
	if alarm[0] != -1 {
		grav_gun = true;
	} else {
		grav_gun_attempt = true;	
	}
}

// Stop burning hydrogen
if mouse_check_button_released(mb_right) {
	alarm[0] = -1;
	grav_gun = false;
}