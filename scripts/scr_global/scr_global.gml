// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function position_in_grav(_x, _y, _range) {
	
	var _blocked = false;
	
	// Check place meeting
	if instance_position(_x, _y, obj_body_parent) {
		show_debug_message("blocked")
		_blocked = true;
	}
	
	if _range != -1 and !_blocked {
	
		// Check for grav_bodies
		for (var _i = 0; _i < instance_number(obj_grav_body); ++_i) {
		    var _body = instance_find(obj_grav_body, _i);
			if point_distance(_x, _y, _body.x, _body.y) <= _body.grav_radius + _range {
				_blocked = true;	
			}
		}
	}
	
	return _blocked;
}


function play_sound(_x, _y, _sound, _variance, _gain=1, _tonality="") {
	
	// Only play if on screen
	if !point_in_rectangle(_x, _y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),  camera_get_view_x(view_camera[0])+room_width, camera_get_view_y(view_camera[0])+room_height) {
		exit;
	}
	
	var _pitch = random_range(1-_variance, 1+_variance);
	if _tonality == "diminished" {
		_pitch = choose(1, 6/5, 25/18, 5/3);	
	}
	audio_play_sound(_sound, 1, false, _gain, 0, _pitch);
}