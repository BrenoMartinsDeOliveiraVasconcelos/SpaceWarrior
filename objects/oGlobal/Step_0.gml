// Global control

if (keyboard_check_pressed(global.fullscreen_key)){
	global.is_fullscreen = !global.is_fullscreen
	window_set_fullscreen(global.is_fullscreen)
}


 // Enemy spawning

 if (global.new_horde && global.frames_remaining_next <= 0){
	 global.horde += 1
	 global.frames_remaining_next = global.frames_till_next
	global.enemy_instances = []
	global.enemy_kill_count = 0
	global.enemy_spawn = global.enemy_spawn*global.spawn_multiplication_rate
	for (var enemy=0; enemy < round( global.enemy_spawn); enemy+=1){
		var spawn_x = irandom_range(0, room_width)
		var spawn_y = 0
	
		array_push(global.enemy_instances, instance_create_layer(spawn_x, spawn_y, "Instances", oEnemy))
	}
	
	// Bonus orb on random point
	instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", oOrb)
	
	global.new_horde = false
 }else if (global.new_horde){
	global.frames_remaining_next -= 1
 }

if (global.enemy_kill_count >= round(global.enemy_spawn)){
	global.new_horde = true
}
