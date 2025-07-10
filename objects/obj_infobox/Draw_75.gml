/// @description Draw Infobox

if active {
	
	var _x = window_mouse_get_x();
	var _y = window_mouse_get_y();
	var _border = 8;
	
	draw_set_font(fnt_main);
	var _w = string_width(text)-_border;
	var _h = string_height(text)-_border;
	
	if (_x > 64 and _y > 128) {
	
		// Draw Box
		draw_set_color(c_black);
		draw_set_alpha(global.ui_alpha);
		draw_rectangle(_x-_w, _y-_h, _x, _y, false);
		draw_set_alpha(1);
	
		// Draw Text
		draw_set_color(c_white);
		draw_set_halign(fa_right);
		draw_set_valign(fa_middle);
		draw_text(_x-_border, _y-_h/2, text);
		
	} else {
		
		// Draw Box
		draw_set_color(c_black);
		draw_set_alpha(global.ui_alpha);
		draw_rectangle(_x, _y, _x+_w, _y+_h, false);
		draw_set_alpha(1);
	
		// Draw Text
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_text(_x+_border, _y+_h/2, text);	
	}
}