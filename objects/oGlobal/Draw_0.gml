font = font_add_sprite_ext(fGamefont, "0123456789. -SHDAFEXR/+", 0, global.text_sep)
gofont = global.gofont
draw_set_font(font)

full_text = ""

first_x = global.game_x
first_y = global.game_y

if (global.show_fps){
	full_text+= "F"+string(fps) + " "
}

full_text += "S"+zfilled_number(global.number_zeroes , global.player.gamescore) + " "

var player_hp = 0

if (global.player.hp > 0){
	player_hp = round((global.player.hp/global.player.hp_max)*100)
}

full_text += "H"+string(player_hp) + "+" + string((global.player.hp_recover_rate/global.player.hp_max)*100) + " "

full_text += "D"+string(round((global.player.def/global.max_def)*100)) + " " 

full_text += "A"+string(global.player.blast_damage) + " "
full_text += "E" + string(global.enemy_kill_count)+ "/" + string(array_length(global.enemy_instances)) + " "
full_text += "X" + string(global.alive_explosives) + " "
full_text += "R" +string(global.horde)


draw_text(first_x, first_y, full_text)

display.image_xscale = global.dialog_scalex
display.image_yscale = global.dialog_scaley

// Draw on enemy
draw_set_halign(fa_center)
for (var enemy=0; enemy<array_length(global.enemy_instances); enemy+=1){
	var instance = global.enemy_instances[enemy]
	
	if instance_exists(instance){
		var hp_text = "0"
	
		if (instance.hp > 0){
			hp_text = string(round((instance.hp/instance.max_hp)*100))
		}
	
		
		draw_text(instance.x, instance.y - instance.sprite_height/2 - 30, hp_text)
	}
}
draw_set_halign(fa_left)

if (global.player.hp <= 0){
	draw_set_font(gofont)
	draw_text(global.player.x, global.player.y, ".")
}