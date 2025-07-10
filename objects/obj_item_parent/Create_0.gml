/// @description Initialize

item_id = 0;
type = "metal";
fric = .05;
min_spd = 2;
rotation_dir = choose(-1, 1);
abbr = "--";
name = "Nada";

spd = 2;
dir = random(360);
grav_gun = false;
immunity = false;

image_speed = 0;

// Start Moving
hspeed = lengthdir_x(spd, dir);
vspeed = lengthdir_y(spd, dir);

// Gas Jitter Alarm
jitter_spd = 10;
alarm[1] = jitter_spd;
alarm[2] = 600;

// Inherit properties from item_id
function item_inherited(_id) {
	item_id = _id;
	abbr = global.item_abbr[_id];
	name = global.item_name[_id];
	sprite_index = global.item_sprite[_id];
	
	switch global.item_type[_id] {
		case "gas":
			min_spd = 0;
			fric = .03;
			type = "gas";
	}
}