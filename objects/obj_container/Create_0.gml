/// @description Init

// GUI Layer Vars
width = 256;
height = 56;
border = 8;

heading = "The Heading";
owner = -1;
elements = [];

// Create Inventory Slots
function create_inventory_slots(_size) {

	height += 48;
	var _x = x+28;
	var _y = y+32;
	
	for (var _i = 0; _i < _size; ++_i) {
		var _inst = instance_create_depth(_x, _y, depth-1, obj_inventory_slot);
		_inst.ui = id;
		_inst.slot = _i;
		array_push(elements, _inst);
		
		_x += 24;
		if (_i + 1) % 4 == 0 {
			_y += 24;
			_x = x+28;
			if _i != 3 {
				// Skip first one
				height += 48;
			}
		}
	}
}


// Create Building Button
function create_building_button(_y, _id) {
	
	_y = y+_y*24+8;
	
	// The button
	var _button = instance_create_depth(x+width/4, _y, depth-1, obj_building_button);
	_button.ui = id;
	_button.building_id = _id;
	array_push(elements, _button);
	height += 48;
	
	// Add Icons
	var _inst = instance_create_depth(x+16, _y, depth-2, obj_ui_icon);
	_inst.ui = id;
	_inst.sprite_index = global.building_icon[_id];
	_inst.text = global.building_name[_id];
	array_push(elements, _inst);
	
	// Item Icons
	for (var _i = 0; _i < array_length(global.recipe[_id]); ++_i) {
		var _item_id = global.recipe[_id][_i];
		_inst = instance_create_depth(x+width/2-16-16*_i, _y, depth-2, obj_ui_icon);
		_inst.ui = id;
		_inst.sprite_index = global.item_sprite[_item_id];
		_inst.text = global.item_name[_item_id];
		_inst.scale = 2;
		_inst.count = global.recipe_count[_id][_i];
		array_push(_button.icons, _inst);
		array_push(elements, _inst);
	}
}


// Destory all elements
function destroy() {
	for (var _i = 0; _i < array_length(elements); ++_i) {
		instance_destroy(elements[_i]);
	}
	instance_destroy();
}