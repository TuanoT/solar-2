/// @description Interact

var _mx = mouse_x - camera_get_view_x(view_camera[0]);
var _my = mouse_y - camera_get_view_y(view_camera[0]);

// Mouse on button
if (point_in_rectangle(_mx, _my, x-size, y-size, x+size, y+size)) {
	
	// Show Infobox
	obj_infobox.active = true;
	obj_infobox.text = text;
}