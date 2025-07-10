/// @description 

event_inherited();

// Grav Gun
grav_gun = false;	
grav_gun_attempt = false;

if (mouse_check_button(mb_right) and global.selected_building == -1 and mouse_in_power_range) {
	grav_gun = true;
}

if (mouse_check_button(mb_right) and global.selected_building == -1 and !mouse_in_power_range) {
	grav_gun_attempt = true;
}