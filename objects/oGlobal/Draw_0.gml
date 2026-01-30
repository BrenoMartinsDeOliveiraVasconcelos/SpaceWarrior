font = font_add_sprite_ext(fGamefont, "0123456789. -SHDAF", 0, global.text_sep)
gofont = font_add_sprite_ext(fGameOver, ".", 0, 2)
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

full_text += "H"+string(player_hp) + " "

full_text += "D"+string(round((global.player.def/global.max_def)*100)) + " " + "A"+string(global.player.blast_damage)

draw_text(first_x, first_y, full_text)

if (global.player.hp <= 0){

	draw_set_font(gofont)
	draw_text(global.player.x, global.player.y, ".")
}

display.image_xscale = global.dialog_scalex
display.image_yscale = global.dialog_scaley
