
if (shield_damage_cooldown <= 0){
	hp -= global.player.shield_colision_damage
	shield_damage_cooldown = max_shield_damage_cooldown
	global.player.gamescore += global.player.score_per_hit
}

suffering_impulse = true
impulsor_object = other
impulse_x = other.x
impulse_y =  other.y

if (hp<=0){
	global.enemy_kill_count += 1
	instance_create_layer(x, y, "Instances", oExplosion)
	instance_destroy(self)
}
