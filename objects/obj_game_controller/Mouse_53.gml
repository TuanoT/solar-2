/// @description Click on Bodies and probably other things

if !global.clicked and global.selected_building == -1 {
	
	var _body = instance_position(mouse_x, mouse_y, obj_body_parent);

	if _body != noone {
		global.selected_body = _body;
	
		// Destory other Building UI (all UI)
		with obj_container {
			destroy();	
		}
	
		// Create Inventory
		if global.selected_body.inv_size != 0 {
			var _ui = instance_create_depth(0, 0, 0, obj_inventory);
			_ui.owner = global.selected_body;
			_ui.create_inventory_slots(global.selected_body.inv_size);
		}
		
		// Create Bulding UI
		if global.selected_body.building_ui {
			var _ui = instance_create_depth(0, 0, 0, obj_buildings);
			_ui.owner = global.selected_body;
			_ui.create_building_button(1, 1);
			_ui.create_building_button(2, 2);
			_ui.create_building_button(3, 3);
		}
	
	} else {
	
		// Unselect and Destory UI
		global.selected_body = -1;
		
		// Destory other Building UI (all UI)
		with obj_container {
			destroy();	
		}
	}
}