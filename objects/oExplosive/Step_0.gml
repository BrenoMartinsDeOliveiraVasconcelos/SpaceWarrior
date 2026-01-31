if (euclidian_distance(x, y, target_x, target_y) <=  1){
	target_x = irandom_range(global.dialog_y_size, room_width)
	target_y = irandom_range(global.dialog_y_size, room_height)
}

image_angle += rotation_speed

if (image_angle >= 360){
	image_angle = 0
}

move_towards_point(target_x, target_y, speed)