array_delete(global.explosives, array_get_index(global.explosives, self), 1)

global.player.gamescore += (global.player.score_per_hit*3)
global.enemy_kill_count += 1
mov_speed = 1

instance_destroy(other)
instance_destroy(self)