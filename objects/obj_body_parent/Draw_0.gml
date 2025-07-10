/// @description Draw Overlays

draw_self();

// Draw selector
if global.selected_body == id {
	draw_sprite(spr_body_selected, 0, x, y);	
}

// Draw Power Radius
if power_radius > 0 {
	draw_set_color(c_yellow);
	draw_set_alpha(.5);
	draw_circle(x, y, power_radius, true);
	draw_set_alpha(1);
}