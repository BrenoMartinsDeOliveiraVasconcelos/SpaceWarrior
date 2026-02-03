if (explosion_damage_cooldown <= 0){
	hp = hp - (max_hp/2)
	global.player.gamescore += global.player.score_per_hit
	explosion_damage_cooldown = explosion_damage_max_cool
}
