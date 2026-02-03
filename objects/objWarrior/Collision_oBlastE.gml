if (hp > 0){
	hp -= (other.damage - (other.damage * def))
	shooted = true
}else{
	blast_damage = 0
	score_per_hit = 0
	instance_create_layer(x, y, "Instances", oGameOver)
	mov_speed = 0
	shield_colision_damage = 0
}