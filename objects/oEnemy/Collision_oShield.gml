if (other.durability > 0){
	if (shield_damage_cooldown <= 0){
		hp -= global.player.shield_colision_damage
		shield_damage_cooldown = max_shield_damage_cooldown
		global.player.gamescore += global.player.score_per_hit
		other.durability -= other.loss_factor
	}

	suffering_impulse = true
	impulsor_object = other
	impulse_x = other.x
	impulse_y =  other.y
}
