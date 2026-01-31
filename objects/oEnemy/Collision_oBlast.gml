var destruct_list = [other]

hp -= global.player.blast_damage
impacted = true
global.player.gamescore += global.player.score_per_hit

if (hp<=0){
	global.enemy_kill_count += 1
	array_push(destruct_list, self)
	instance_create_layer(x, y, "Instances", oExplosion)
}

for (var inst = 0; inst < array_length(destruct_list); inst+=1){
	instance_destroy(destruct_list[inst])
}
