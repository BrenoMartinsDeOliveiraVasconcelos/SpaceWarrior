if (euclidian_distance(x, y, target_x, target_y) <=  1){
	target_x = irandom_range(0, room_width)
	target_y = irandom_range(0, room_height)
}

move_towards_point(target_x, target_y, speed)