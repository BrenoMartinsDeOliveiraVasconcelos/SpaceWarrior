image_xscale = 1.5
image_yscale = 1.5

max_hp = 20+((global.horde-1)*10)
hp = max_hp
frames_per_blast = 120 - ((global.horde-1) * 2)

if (frames_per_blast <= 15){
	frames_per_blast = 15
}

blast_damage = 10 + ((global.horde-1)*0.5)
og_blast_damage = blast_damage
last_blast = frames_per_blast
move_speed = 1
og_move_speed = move_speed
impacted = false
suffering_impulse = false
impulsor_object = oShield
impulse_x = 0
impulse_y = 0
impacted_walk_dist = 0
impact_debuff = 0.5
target_x = 0
target_y = 0
og_target_y = 0
is_randomly_moving = false
shield_damage_cooldown = 0
max_shield_damage_cooldown = 60
explosion_damage_max_cool = 120
explosion_damage_cooldown = 0


