/// @description Draw Self at *2 scale

var _uix = x*2;
var _uiy = y*2;

draw_sprite_ext(spr_inventory_slot, 0, _uix, _uiy, image_xscale, image_yscale, 0, c_white, image_alpha);

// Draw Item
var _body = ui.owner;

if _body.inv[slot] != 0 {
	var _spr = global.item_sprite[_body.inv[slot]];
	draw_sprite_ext(_spr, 0, _uix, _uiy, 2, 2, 0, c_white, 1);
	
	// Draw Count
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_main);
	draw_text(_uix+16, _uiy+14, _body.inv_count[slot]);
}