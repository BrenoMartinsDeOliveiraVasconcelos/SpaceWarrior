global.show_fps = false
global.target_w = 750
global.target_h = 750
global.is_fullscreen =  false
global.player_spawn_y_percent = 85
global.player_spawn_x_percent = 50
global.enemy_spawn_y_percent = 60
global.game_x = 10
global.game_y = 10
global.lx_spacing = 100
global.cy_spacing = 30
global.number_zeroes = 9
global.bonuses = [sDef, sHealthBoost, sAddExplosive, sBlastSpeed, sMaxHP]
global.text_sep = 2
global.dialog_size = 16
global.dialog_scalex = 31.25
global.dialog_scaley = 2
global.dialog_y_size = global.dialog_scaley*global.dialog_size

global.star_amount =  64
global.star_distance = 8

// Game info
global.enemy_spawn = 1
global.enemy_instances = []
global.explosives = []
global.new_horde = true
global.enemy_kill_count = 0
global.spawn_multiplication_rate = 1.25
global.enemy_max_y = 75
global.frames_till_next = 1200
global.frames_remaining_next = 0
global.orbs = 2
global.orb_spawn_range = 100
global.horde = 0
global.enemy_distancing = 40

// Keys
global.fullscreen_key = vk_f11
global.mov_left = ord("A")
global.mov_right = ord("D")
global.mov_up = ord("W")
global.mov_down = ord("S")
global.blast_key = vk_enter
global.toggle_fps_key = vk_f3

// Preparation
randomise()

window_set_size(global.target_w, global.target_h)
window_set_fullscreen(global.is_fullscreen)

global.player = instance_create_layer(get_rounded_percent(room_width, global.player_spawn_x_percent), get_rounded_percent(room_height, global.player_spawn_y_percent), "Instances", objWarrior)

var random_positions = gen_random_coords_distanced(global.star_amount, global.star_distance, room_width, room_height)

for (var star_num=0; star_num < array_length(random_positions); star_num+=1){
	var star_coord = random_positions[star_num]
	instance_create_layer(star_coord[0], star_coord[1], "Bottom", oStar)
}
