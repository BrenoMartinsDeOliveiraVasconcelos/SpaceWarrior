if (keyboard_check(global.mov_left)){
		x -= mov_speed
}

if (keyboard_check(global.mov_right)){
	x += mov_speed
}

if (keyboard_check(global.mov_up)){
	y -= mov_speed
}

if (keyboard_check(global.mov_down)){
	y += mov_speed
}


if (keyboard_check(global.blast_key)){
	if (last_blast > frames_per_blast){
		instance_create_layer(x, y-(sprite_height/2), "Instances", oBlast)
		last_blast = 0
	}
}

// HP recover
if (last_recover >= frames_per_recover && hp < hp_max){
	last_recover = 0
	hp += hp_recover_rate
	
	if (hp > hp_max){
		hp = hp_max
	}
}

// Boundaries checker
if (x < 0){
	x = 0
}

if (x > room_width){
	x = room_width
}

if (y > room_height){
	y = room_height
}

if (y < global.dialog_y_size){
	y = global.dialog_y_size
}


last_blast += 1
last_recover += 1 

if (hp <= 0){
	hp = 0
	hp_recover_rate = 0
}
