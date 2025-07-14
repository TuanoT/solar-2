/// @description Spawn Hydrogen

// Find x and y values
var _x = lengthdir_x(18, direction);
var _y = lengthdir_y(18, direction);

// Create instance
var _i = instance_create_layer(x + _x, y + _y, "Items", obj_item_parent);
play_sound(x, y, snd_generate, .3, .7, "diminished");
_i.item_inherited(item_id);

// Set instance speed and dir
_i.spd = random_range(2, 3);
_i.dir = direction + random_range(-45, 45);
_i.hspeed = lengthdir_x(_i.spd, _i.dir);
_i.vspeed = lengthdir_y(_i.spd, _i.dir);

alarm[0] = spawn_rate;