/// @description

// Rotate
image_angle += rotation_speed;

// Find if mouse is in power range
if power_radius != 0 {
	mouse_in_power_range = point_distance(x, y, mouse_x, mouse_y) < power_radius;
}

// Rotate but different
if (rotation_speed == 0 and global.selected_body == id) {
	if mouse_wheel_down() {
		direction += global.building_rotation_speed;	
	}
	
	if mouse_wheel_up() {
		direction -= global.building_rotation_speed;	
	}
	
	// Overrides rotation_speed
	image_angle = direction;
}