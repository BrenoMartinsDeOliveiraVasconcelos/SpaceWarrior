if (euclidian_distance(x, y, target_x, target_y) <=  1){
	target_x = irandom_range(global.dialog_y_size, room_width)
	target_y = irandom_range(global.dialog_y_size, room_height)
}

move_towards_point(target_x, target_y, speed)