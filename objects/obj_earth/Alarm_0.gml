/// Burn Hydrogen

if get_inventory_item(4, 1) != -1 {
	burn_hydrogen();
	alarm[0] = grav_gun_burn_rate;
} else {
	alarm[0] = -1;	
}