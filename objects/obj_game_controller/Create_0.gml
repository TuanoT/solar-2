/// @description Init Game

randomize();

// Initialize Global Variables
global.selected_body = -1;
global.selected_building = -1;
global.clicked = false;
global.ui_alpha = .75;
global.building_rotation_speed = 15;

building_owner = -1;
can_place_building = true;
building_rotation = 0;

// Init Item Spawning
item_spawn_rate = 60;
alarm[0] = item_spawn_rate;