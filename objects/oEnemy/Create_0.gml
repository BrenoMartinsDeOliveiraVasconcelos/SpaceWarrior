max_hp = 20+((global.horde-1)*2)
hp = max_hp
frames_per_blast = 120 - ((global.horde-1) * 2)

if (frames_per_blast <= 15){
	frames_per_blast = 15
}

blast_damage = 5 + ((global.horde-1)*2)
og_blast_damage = blast_damage
last_blast = frames_per_blast
move_speed = 1
og_move_speed = move_speed
impacted = false
impacted_walk_dist = 0
impact_debuff = 0.5
target_x = 0
target_y = 0
og_target_y = 0
is_randomly_moving = false

