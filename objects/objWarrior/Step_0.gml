if (keyboard_check(global.mov_left)){
		x -= mov_speed
}

if (keyboard_check(global.mov_right)){
	x += mov_speed
}


if (keyboard_check(global.blast_key)){
	if (last_blast > frames_per_blast){
		instance_create_layer(x, y-(sprite_height/2), "Instances", oBlast)
		last_blast = 0
	}
}

// Boundaries checker
if (x < 0){
	x = 0
}

if (x > room_width){
	x = room_width
}

last_blast += 1