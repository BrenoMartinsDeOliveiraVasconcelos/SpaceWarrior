global.player.gamescore += (global.player.score_per_hit*3)
global.enemy_kill_count += 1
global.alive_explosives -= 1

instance_create_layer(x, y, "Instances", oExplosion)
instance_destroy(other)
instance_destroy(self)