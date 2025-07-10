/// @description Move the view

// Set start position
if mouse_check_button_pressed(mb_middle) {
	view_start_x = camera_get_view_x(view_camera[0]);
	view_start_y = camera_get_view_y(view_camera[0]);
	mouse_start_x = window_mouse_get_x();
	mouse_start_y = window_mouse_get_y();
}


// Update view position
if mouse_check_button(mb_middle) {
	var _x = view_start_x + (mouse_start_x - window_mouse_get_x())*zoom;
	var _y = view_start_y + (mouse_start_y - window_mouse_get_y())*zoom;
	camera_set_view_pos(view_camera[0], _x, _y);
}


// Update camera size
camera_set_view_size(view_camera[0], view_wport[0]*zoom, view_hport[0]*zoom);


// Clamp to edge of screen
var _x = clamp(camera_get_view_x(view_camera[0]), 0, room_width-view_wport[0]*zoom);
var _y = clamp(camera_get_view_y(view_camera[0]), 0, room_height-view_hport[0]*zoom);
camera_set_view_pos(view_camera[0], _x, _y);


// Set camera's position to the view
x = _x;
y = _y;