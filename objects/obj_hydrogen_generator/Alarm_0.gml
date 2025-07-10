/// @description Spawn Hydrogen


var _i = instance_create_layer(x, y, "Items", obj_item_parent);

_i.spd = random_range(2, 3);
_i.item_inherited(item_id);
play_sound(x, y, snd_generate, .3, .7, "diminished");

alarm[0] = spawn_rate;