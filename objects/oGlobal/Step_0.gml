// Global control

if (keyboard_check_pressed(global.fullscreen_key)){
	global.is_fullscreen = !global.is_fullscreen
	window_set_fullscreen(global.is_fullscreen)
}

if (keyboard_check(global.toggle_fps_key)){
	global.show_fps = !global.show_fps
}


 // Enemy spawning

 if (global.new_horde && global.frames_remaining_next <= 0){
	 global.horde += 1
	 global.frames_remaining_next = global.frames_till_next
	global.enemy_instances = []
	global.enemy_kill_count = 0
	global.enemy_spawn = global.enemy_spawn*global.spawn_multiplication_rate
	var enemy_coords = gen_random_coords_distanced(global.enemy_spawn, global.enemy_distancing, room_width, get_rounded_percent(room_height, global.enemy_spawn_y_percent))
	for (var enemy=0; enemy < round( global.enemy_spawn); enemy+=1){
		var spawn_x = irandom_range(0, room_width)
		var spawn_y = 0
		var enemy_inst =  instance_create_layer(spawn_x, spawn_y, "Instances", oEnemy)
		
		var enemy_xy =  enemy_coords[enemy]
		
		enemy_inst.target_x = enemy_xy[0]
		enemy_inst.target_y = enemy_xy[1]
	
		array_push(global.enemy_instances, enemy_inst)
	}
	
	// Bonus orb on random point
	for (var orb=0; orb < global.orbs; orb+=1){
		var spawn_x = irandom_range(global.player.x-global.orb_spawn_range, global.player.x+global.orb_spawn_range)
		var spawn_y = irandom_range(global.player.y-global.orb_spawn_range, global.player.y+global.orb_spawn_range)
		
		if (spawn_x < 0){
			spawn_x = 0
		}
		
		if (spawn_x > room_width){
			spawn_x = room_width
		}
		
		if (spawn_y < 0){
			spawn_y = 0
		}
		
		if (spawn_y > room_height){
			spawn_y = room_height
		}
		
		instance_create_layer(spawn_x, spawn_y, "Instances", oOrb)
	}
	
	
	// Clear previous explosives and spawn new ones
	var len_explosives = array_length(global.explosives)
	if (len_explosives > 0){
		while (len_explosives > 0){
			instance_destroy(array_pop(global.explosives))
			len_explosives = array_length(global.explosives)
			
			show_debug_message(string(len_explosives))
		}
		global.explosives = []
	}
	
	if (global.player.explosives > 0){
		for (var explosive=0; explosive<global.player.explosives; explosive+=1){
			var explosive_inst = instance_create_layer(global.player.x, global.player.y, "Instances", oExplosive)
			array_push(global.explosives, explosive_inst)
		}
	}
	
	global.new_horde = false
 }else if (global.new_horde){
	global.frames_remaining_next -= 1
 }

if (global.enemy_kill_count >= round(global.enemy_spawn)){
	global.new_horde = true
}
