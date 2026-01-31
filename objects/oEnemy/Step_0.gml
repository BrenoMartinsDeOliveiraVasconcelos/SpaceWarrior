// Movement and targeting logic
var distance_to_target = point_distance(x, y, target_x, target_y)
var move_to_target = distance_to_target > 5 or  impacted or  suffering_impulse

if (move_to_target) {
	speed = move_speed
    var final_x = target_x
    var final_y = target_y
    var current_speed = move_speed

    // Handle impact state
    if (impacted) {
        blast_damage *= impact_debuff
        current_speed = global.player.impacted_speed
        final_y = y - (global.player.impact - impacted_walk_dist)
        impacted_walk_dist += global.player.impacted_speed
    }

    // Handle impulse state
    if (suffering_impulse) {
        impacted_walk_dist += move_speed
        var remaining_dist = global.player.shield_impulse - impacted_walk_dist
        
        var impulse_pos = get_xy_angle(
            impulse_x, 
            impulse_y, 
            global.player.shield_impulse, 
            impulsor_object.angulation
        )
        
        final_x = impulse_pos[0]
        final_y = impulse_pos[1]

        if (impacted_walk_dist >=  global.player.shield_impulse) {
            suffering_impulse = false
            impacted_walk_dist = 0
        }
    }

    // Execute movement
    move_towards_point(final_x, final_y, current_speed)

    // Reset impact state when walk distance is reached
    if (impacted_walk_dist >= global.player.impact) {
        impacted = false
        impacted_walk_dist = 0
        blast_damage = og_blast_damage
    }
} 
else {
    // Handle idle behavior
    if (!is_randomly_moving) {
        speed = 0
    } else {
        // Set random movement target
        target_x = irandom_range(global.dialog_y_size, room_width)
        target_y = irandom_range(global.dialog_y_size, room_height)
    }
}

// Combat logic
var player_nearby = abs(global.player.x - x) <= global.player.sprite_width && global.player.y >= y
var can_fire = last_blast > frames_per_blast && player_nearby

if (can_fire) {
    var blast_y = y + (sprite_height / 2)
    var blast = instance_create_layer(x, blast_y, "Instances", oBlastE)
    
    blast.damage = blast_damage
    last_blast = 0;
}

// Update cooldowns
shield_damage_cooldown -= 1
last_blast += 1

// Grant no out-of-bounds position
if (x < 0 or x > room_width or y < global.dialog_y_size or y > room_height){
		if (!move_to_target){
			target_x = irandom_range(global.dialog_y_size, room_width)
			target_y = irandom_range(global.dialog_y_size, room_height)
		}
}