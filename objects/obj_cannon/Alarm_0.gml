/// @description Fire item

alarm[0] = fire_rate;

var _id = get_inventory_item();
pop_item(_id);

// Create Item Object
if _id != -1 {
	var _item = instance_create_layer(x, y, "Items", obj_item_parent);
	_item.spd = item_speed;
	_item.dir = direction;
	_item.immunity = true;
	_item.alarm[0] = immunity_time;
	_item.item_inherited(_id);
	
	image_speed = .5;
	
	play_sound(x, y, snd_cannon, .1, .9);
}