/// @description Draw

var _uix = x*2;
var _uiy = y*2;

// Draw Background
draw_set_color(c_black);
draw_set_alpha(global.ui_alpha);
draw_rectangle(_uix+border, _uiy+border, _uix+width-border, _uiy+height-border, false);
draw_set_color(c_white);
draw_rectangle(_uix+border, _uiy+border, _uix+width-border, _uiy+height-border, true);
draw_set_alpha(1);

// Draw Title
draw_set_font(fnt_heading);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_uix+width/2, _uiy+border+16, heading);

/* Draw Line to Body
if owner != -1 {
	var _bx = (owner.x-camera_get_view_x(view_camera[0])) * 2;
	var _by = (owner.x-camera_get_view_y(view_camera[0])) * 2;
	draw_line(_uix+width-border, _uiy+border, _bx, _by);
} */