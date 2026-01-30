

if (euclidian_distance(x, y, target_x, target_y) > 5){
	speed = move_speed
	var final_target_y = target_y
	
	if  (impacted){
		blast_damage *= impact_debuff
		speed = global.player.impacted_speed
		final_target_y = y - (global.player.impact - impacted_walk_dist)
		impacted_walk_dist += global.player.impacted_speed
	}
	move_towards_point(target_x, final_target_y, speed)
	
	if (impacted_walk_dist >= global.player.impact){
		impacted = false
		impacted_walk_dist = 0
		blast_damage = og_blast_damage
	}
}else{
	speed = 0
}

if (last_blast > frames_per_blast){
	instnace = instance_create_layer(x, y+(sprite_height/2), "Instances", oBlastE)
	last_blast = 0
	instnace.damage = blast_damage
}


last_blast += 1
