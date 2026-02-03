hp -= global.player.blast_damage
impacted = true
global.player.gamescore += global.player.score_per_hit

instance_destroy(other)
