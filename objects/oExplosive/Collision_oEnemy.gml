global.player.gamescore += (global.player.score_per_hit*3)
global.enemy_kill_count += 1
mov_speed = 1

instance_destroy(other)
instance_destroy(self)