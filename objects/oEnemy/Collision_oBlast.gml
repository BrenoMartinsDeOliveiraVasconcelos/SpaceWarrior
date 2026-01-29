var destruct_list = [other]

hp -= global.player.blast_damage
impacted = true
global.player.gamescore += 12

if (hp<=0){
	global.enemy_kill_count += 1
	array_push(destruct_list, self)
}

for (var inst = 0; inst < array_length(destruct_list); inst+=1){
	instance_destroy(destruct_list[inst])
}
