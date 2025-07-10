/// @description Update Position

grav_gun = false;

// Find Nearest Body
var _body = -1;
if (instance_exists(obj_grav_body) and !immunity) {
	
	// Find nearest body
	_body = instance_nearest(x, y, obj_grav_body);
		
	// Only set _body if it's in range
	if (point_distance(x, y, _body.x, _body.y) > _body.grav_radius) {
		_body = -1;
	}
	
	// Grav Gun override _body
	if (obj_earth.grav_gun and point_distance(x, y, mouse_x, mouse_y) < obj_earth.grav_gun_radius) {
		_body = obj_earth;
		grav_gun = true;
	}
}

// Move toward body
if (_body != -1) {
	var _body_dir = point_direction(x, y, _body.x, _body.y);
	hspeed += lengthdir_x(_body.grav, _body_dir);
	vspeed += lengthdir_y(_body.grav, _body_dir);
	
	// Get new spd and dir
	dir = point_direction(0, 0, hspeed, vspeed);
	spd = point_distance(0, 0, hspeed, vspeed);
	
	// Apply Friction
	if spd >= fric {
		spd -= fric;	
	}
} else {
	// Apply Friction
	if spd >= min_spd + fric {
		spd -= fric;	
	}
}

// Set final hspeed and vspeed
hspeed = lengthdir_x(spd, dir);
vspeed = lengthdir_y(spd, dir);

// Collide with body
if (_body != -1) {
	if point_in_circle(x, y, _body.x, _body.y, _body.collision_radius) {
		_body.collect(id);	
	}

}


// Rotate image
image_angle += rotation_dir * spd * 2.5;


// Die if outside room
if (x < -64 or x > room_width+64) {
	instance_destroy();	
}

if (y < -64 or y > room_height+64) {
	instance_destroy();	
}

// Change Color
if grav_gun {
	image_blend = c_ltgray;	
} else {
	image_blend = c_white;	
}