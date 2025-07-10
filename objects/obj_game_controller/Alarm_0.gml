/// @description Spawn Items

var _i = noone;

// Spawn on the x or y axis, outside the room
if choose(true, false) {
	
	// Spawn on x-axis
	var _x = irandom(room_width);
	var _y = choose(-32, room_height+32);
	_i = instance_create_layer(_x, _y, "Items", obj_item_parent);
	
	// Choose direction
	_x = irandom(room_width);
	_y = irandom(room_height);
	_i.dir = point_direction(_i.x, _i.y, _x, _y);
} else {
	
	// Spawn on y-axis
	var _x = choose(-32, room_width+32);
	var _y = irandom(room_height);
	_i = instance_create_layer(_x, _y, "Items", obj_item_parent);
	
	// Choose direction
	_x = irandom(room_width);
	_y = irandom(room_height);
	_i.dir = point_direction(_i.x, _i.y, _x, _y);	
}

// Choose which Item to spawn
if irandom(6) != 0 {
	_i.item_inherited(choose(2, 6, 7));
} else {
	_i.item_inherited(choose(8, 9));
}

alarm[0] = item_spawn_rate;