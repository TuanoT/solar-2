// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
	
var _id;

// Init Arrays
global.building_name = [];
global.building_sprite = [];
global.building_icon = [];
global.recipe = [];
global.building_radius = [];
global.recipe_count = [];
global.building_object = [];

// Cannon
_id = 1;
global.building_name[_id] = "Cannon";
global.building_sprite[_id] = spr_cannon;
global.building_icon[_id] = spr_cannon;
global.recipe[_id] = [7, 6];
global.recipe_count[_id] = [1, 1];
global.building_radius[_id] = 32;
global.building_object[_id] = obj_cannon;

// Hydrogen Generator
_id = 2;
global.building_name[_id] = "Hydrogen Generator";
global.building_sprite[_id] = spr_hydrogen_generator;
global.building_icon[_id] = spr_hydrogen_generator;
global.recipe[_id] = [2, 6];
global.recipe_count[_id] = [2, 1];
global.building_radius[_id] = -1;
global.building_object[_id] = obj_hydrogen_generator;

// Helium Generator
_id = 3;
global.building_name[_id] = "Helium Generator";
global.building_sprite[_id] = spr_helium_generator;
global.building_icon[_id] = spr_helium_generator;
global.recipe[_id] = [2, 6];
global.recipe_count[_id] = [2, 1];
global.building_radius[_id] = -1;
global.building_object[_id] = obj_helium_generator;

// Furnace
_id = 4;
global.building_name[_id] = "Furnace";
global.building_sprite[_id] = spr_furnace;
global.building_icon[_id] = spr_cannon;
global.recipe[_id] = [7, 6];
global.recipe_count[_id] = [1, 1];
global.building_radius[_id] = 32;
global.building_object[_id] = obj_cannon;