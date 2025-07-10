/// @description Initalize

grav = .1;
grav_radius = 64;
power_radius = 0;

rotation_speed = 0.1;
collision_radius = 16;
building_ui = false;
mouse_in_power_range = false;

inv = [];
inv_count = [];
inv_filter_type = [];
inv_filter = [];
inv_size = 0;

// "Pick up" items
function collect(_item) {
	
	// Play Sound
	if _item.type == "metal" {
		play_sound(_item.x, _item.y, snd_clink, .1);
	} else {
		play_sound(_item.x, _item.y, snd_small_impact, .1, .8);	
	}
	
	var _id = _item.item_id;
	instance_destroy(_item);
	
	// Find item to stack with
	for (var _i = 0; _i < array_length(inv); ++_i) {
		if inv[_i] == _id {
			inv_count[_i]++;
			return;
		}
	}
	
	// Find an open slot
	for (var _i = 0; _i < array_length(inv); ++_i) {
		if inv[_i] == 0 {
			inv[_i] = _id;
			inv_count[_i]++;
			return;
		}	
	}
}

/// @function            get_inventory_item();
/// @param {real} _id    The item_id of the item to check
/// @param {real} _count The count to check for
function get_inventory_item(_id=-1, _count=1) {
	
	for (var _i = 0; _i < array_length(inv); ++_i) {
		if _id == -1 {
			
			// Find the first slot with an item in it
			if inv[_i] != 0 and inv_count[_i] >= _count {
				return inv[_i];
			}
		} else {
			
			// Return only if the id matches
			if inv[_i] == _id and inv_count[_i] >= _count {
				return inv[_i];
			}
		}
	}
	
	return -1;
}


/// @function            pop_item(_id, _count);
/// @param {real} _id    The count of the item to pop
/// @param {real} _count The item_id of the item to pop
function pop_item(_id, _count=1) {

	if _id != -1 {
	
		// Find the item
		for (var _i = 0; _i < array_length(inv); ++_i) {
			if inv[_i] == _id {
				inv_count[_i] -= _count;
				if inv_count[_i] <= 0 {
					inv[_i] = 0;
					inv_count[_i] = 0;
				}
				break;
			}
		}
	}
}


// Set initial properties
function set_properties(_inv_size) {
	
	// Initialize Inventory array
	if _inv_size != 0 {
		array_resize(inv, _inv_size);
		array_resize(inv_count, _inv_size);
		inv_size = _inv_size;
	}
}