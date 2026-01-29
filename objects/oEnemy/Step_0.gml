
target_x = global.player.x
target_y = global.player.y - distance_from_player

if (euclidian_distance(x, y, target_x, target_y) > 0){
	speed = move_speed
	
	if  (impacted){
		speed = global.player.impacted_speed
		target_y = y - (global.player.impact - impacted_walk_dist)
		impacted_walk_dist += global.player.impacted_speed
	}
	move_towards_point(target_x, target_y, speed)
	
	if (impacted_walk_dist >= global.player.impact){
		impacted = false
	}
}else{
	speed = 0
}