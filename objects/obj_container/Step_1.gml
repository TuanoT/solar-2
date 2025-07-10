/// @description Eat Click

var _mx = mouse_x - camera_get_view_x(view_camera[0]);
var _my = mouse_y - camera_get_view_y(view_camera[0]);
var _x1 = x + border/2;
var _y1 = y + border/2;
var _x2 = x + (width - border)/2;
var _y2 = y + (height - border)/2;

if point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2) {
	global.clicked = true;	
}