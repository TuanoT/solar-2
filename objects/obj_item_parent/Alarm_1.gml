/// @description Jitter

if choose(true, false) {
	x += choose(.5, -.5);	
} else {
	y += choose(.5, -.5);		
}

alarm[1] = jitter_spd;

// Flashing
if type == "gas" and alarm[2] < 60 {
		image_alpha = !image_alpha;
}