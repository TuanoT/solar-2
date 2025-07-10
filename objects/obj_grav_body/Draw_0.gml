/// @description Draw Ring

event_inherited();


if global.selected_body != id {
	draw_set_alpha(.5);	
}

// Draw grav_radius ring
draw_set_color(c_white);
draw_circle(x, y, grav_radius, true);
draw_set_alpha(1);	