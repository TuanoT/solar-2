/// @description Draw Overlays

// Draw grav gun Overlay
if grav_gun {
	draw_set_color(c_yellow);
	var _alpha = alarm[0] / grav_gun_burn_rate
	draw_set_alpha(_alpha);
	draw_line_width(x, y, mouse_x, mouse_y, .5);
	draw_circle(mouse_x, mouse_y, grav_gun_radius, true);
	draw_set_alpha(_alpha * 0.5);
	draw_circle(mouse_x, mouse_y, grav_gun_radius, false);
	draw_set_alpha(1);
	
} else if grav_gun_attempt {
	draw_set_color(c_red);
	draw_circle(mouse_x, mouse_y, grav_gun_radius, true);
}

event_inherited();