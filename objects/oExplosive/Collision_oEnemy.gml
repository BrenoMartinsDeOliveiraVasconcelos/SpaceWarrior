global.player.gamescore += (global.player.score_per_hit*3)
global.alive_explosives -= 1
other.hp -= damage

instance_create_layer(x, y, "Instances", oExplosion)
instance_destroy(self)