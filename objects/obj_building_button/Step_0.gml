/// @description Interact

// Check if can build
can_build = true;
for (var _i = 0; _i < array_length(icons); ++_i) {
	var _id = global.recipe[building_id][_i];
	var _count = global.recipe_count[building_id][_i];
	if ui.owner.get_inventory_item(_id, _count) != -1 {
		icons[_i].text_colour = c_white;
	} else {
		icons[_i].text_colour = c_red;
		can_build = false;
	}
}

// Mouse on button
var _mx = mouse_x - camera_get_view_x(view_camera[0]);
var _my = mouse_y - camera_get_view_y(view_camera[0]);

if (position_meeting(_mx, _my, self) and can_build) {
	image_alpha = 1;
	
	// Click on button
	if mouse_check_button_pressed(mb_left) {
		global.selected_building = building_id;
		
		// Destory all UI
		with obj_container {
			destroy();	
		}
	}
} else {
	image_alpha = 0.5;	
}