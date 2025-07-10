/// @description When Selected

if global.selected_body == id {
	
	if global.selected_body != id {
		draw_set_alpha(.5);	
	}
	
	// Draw Trajectory 
	var _len = grav_radius + 64;
	var _x = x + lengthdir_x(_len, direction);
	var _y = y + lengthdir_y(_len, direction);
	draw_set_color(c_white);
	draw_line(x, y, _x, _y);
	draw_sprite_ext(spr_arrorhead, 0, _x, _y, 1, 1, direction, c_white, 1);
}

draw_set_alpha(1);	
event_inherited();