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
if (last_recover >= frames_per_recover && hp < hp_max && !shooted){
	last_recover = 0
	hp += hp_recover_rate
	
	if (hp > hp_max){
		hp = hp_max
	}
}

if (shooted){
	shooted_cooldown += 1
	
	if (shooted_cooldown > cooldown_recover_shooted){
		shooted = false
		shooted_cooldown = 0
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

if  (array_length(shields) < number_shields){
	shield_pos = 0
	for (shield_num = 0; shield_num < array_length(shields); shield_num+=1){
		shields[shield_num].angulation = shield_pos
		
		shield_pos += 1
		if (shield_pos > 360){
			shield_pos = 0
		}
	}
	
	while  (array_length(shields) < number_shields){
		shield = instance_create_layer(0, 0, "Instances", oShield)
		shield.angulation = shield_pos
		shield.orbit_speed = shield_speed
		array_push(shields, shield)
	
		shield_pos += 1
		
		if (shield_pos > 360){
			shield_pos = 0
		}
	}
}

// Count shield
if (array_length(shields) > 0){
	shield_current_durability = 0
	shield_max_durability = 0
	for (shield_num = 0; shield_num < array_length(shields); shield_num+=1){
		shield_inst = shields[shield_num]
		shield_current_durability += shield_inst.durability
		shield_max_durability += shield_inst.max_durability
	}
}
