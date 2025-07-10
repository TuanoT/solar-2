/// @description Draw Self at *2 scale

var _uix = x*2;
var _uiy = y*2;

draw_sprite_ext(sprite_index, 0, _uix, _uiy, scale, scale, 0, c_white, 1);

var _body = ui.owner;

// Draw Count
if count != 0 {
	draw_set_color(text_colour);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_main);
	draw_text(_uix+16, _uiy+14, count);
}