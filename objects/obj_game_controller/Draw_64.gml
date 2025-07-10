/// @description Draw Global UI

// Draw build UI
if global.selected_building != -1 {
	var _id = global.selected_building;
	var _spr = global.building_sprite[_id];
	var _colour = c_red;
	if can_place_building {
		_colour = c_lime;
	}
	
	draw_sprite_ext(_spr, 0, window_mouse_get_x(), window_mouse_get_y(), 2, 2, building_rotation, _colour, .7);
	
	// Draw Radius
	if global.building_radius[_id] != -1 {
		draw_set_alpha(.5);
		draw_set_color(_colour);
		draw_circle(window_mouse_get_x(), window_mouse_get_y(), global.building_radius[_id]*2, true);
		
		// Draw Trajectory 
		var _len = global.building_radius[_id] + 128;
		var _x = window_mouse_get_x() + lengthdir_x(_len, building_rotation);
		var _y = window_mouse_get_y() + lengthdir_y(_len, building_rotation);

		draw_line(window_mouse_get_x(), window_mouse_get_y(), _x, _y);
		draw_sprite_ext(spr_arrorhead, 0, _x, _y, 1, 1, building_rotation, _colour, .5);
		draw_set_alpha(1);
	}
}