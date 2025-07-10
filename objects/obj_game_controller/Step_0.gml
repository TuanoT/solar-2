/// @description Stuff

// Expensive! Build mode
if global.selected_building != -1 and !global.clicked {
	
	var _id = global.selected_building;
	
	// Check if can place
	if !position_in_grav(mouse_x, mouse_y, global.building_radius[_id]) and global.selected_body.mouse_in_power_range {
		can_place_building = true;	
	} else {
		can_place_building = false;	
	}
	
	// Click and Place
	if can_place_building and mouse_check_button_pressed(mb_left) {
		
		// Deduct items
		for (var _i = 0; _i < array_length(global.recipe[global.selected_building]); ++_i) {
			global.selected_body.pop_item(global.recipe[global.selected_building][_i]);
		}
		
		// Place
		var _inst = instance_create_layer(mouse_x, mouse_y, "Instances", global.building_object[_id]);
		_inst.direction = building_rotation;
		_inst.image_angle = _inst.direction;
		
		global.selected_building = -1;
		global.selected_body = -1;
		building_owner = -1;
	}
	
	// Deselect Building
	if mouse_check_button_pressed(mb_right) {
		global.selected_building = -1;
		global.selected_body = -1;
		building_owner = -1;
	}
	
	// Change Rotation
	if mouse_wheel_down() {
		building_rotation += global.building_rotation_speed;	
	}
	
	if mouse_wheel_up() {
		building_rotation -= global.building_rotation_speed;	
	}
}