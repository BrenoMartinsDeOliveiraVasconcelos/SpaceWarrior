
target_x = global.player.x
target_y = global.player.y - (distance_from_player + prefered_extra_blast_distance)

if (target_y < 0){
	target_y = 10
}

if (euclidian_distance(x, y, target_x, target_y) > 0){
	speed = move_speed
	
	if  (impacted){
		frames_per_blast *= 2
		speed = global.player.impacted_speed
		target_y = y - (global.player.impact - impacted_walk_dist)
		impacted_walk_dist += global.player.impacted_speed
	}
	move_towards_point(target_x, target_y, speed)
	
	if (impacted_walk_dist >= global.player.impact){
		impacted = false
		frames_per_blast /= 2
		impacted_walk_dist = 0
	}
}else{
	speed = 0
}

if (last_blast > frames_per_blast){
	instnace = instance_create_layer(x, y-(sprite_height/2), "Instances", oBlastE)
	last_blast = 0
	instnace.damage = blast_damage
}


last_blast += 1
