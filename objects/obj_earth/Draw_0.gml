/// @description Draw Overlays

// Draw grav gun Overlay
if grav_gun {
	draw_set_color(c_yellow);
	draw_line_width(x, y, mouse_x, mouse_y, .5);
	draw_circle(mouse_x, mouse_y, grav_gun_radius, true);
} else if grav_gun_attempt {
	draw_set_color(c_red);
	draw_circle(mouse_x, mouse_y, grav_gun_radius, true);
}

event_inherited();

// Draw Buildings
draw_sprite_ext(spr_earth_hydrogen_generator, 0, x, y, 1, 2, image_angle, c_white, 1);