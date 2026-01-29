// Global control

if (keyboard_check_pressed(global.fullscreen_key)){
	global.is_fullscreen = !global.is_fullscreen
	window_set_fullscreen(global.is_fullscreen)
}


 // Enemy spawning

 if (global.new_horde){
	global.enemy_instances = []
	global.enemy_kill_count = 0
	global.enemy_spawn = round(global.enemy_spawn*global.spawn_multiplication_rate)
	for (var enemy=0; enemy < global.enemy_spawn; enemy+=1){
		var spawn_x = irandom_range(0, room_width)
		var spawn_y = irandom_range(0, get_rounded_percent(room_height, global.enemy_max_y))
	
		array_push(global.enemy_instances, instance_create_layer(spawn_x, spawn_y, "Instances", oEnemy))
	}
	
	global.new_horde = false
 }

if (global.enemy_kill_count >= global.enemy_spawn){
	global.new_horde = true
}
