font = font_add_sprite_ext(fGamefont, "0123456789. -SHDA", 0, 2)
gofont = font_add_sprite_ext(fGameOver, ".", 0, 2)

draw_set_font(font)

first_x = global.game_x
first_y = global.game_y

draw_text(first_x, first_y, "S"+zfilled_number(global.number_zeroes , global.player.gamescore))

first_y += global.cy_spacing

draw_text(first_x, first_y, "H"+string(global.player.hp))

first_y += global.cy_spacing
draw_text(first_x, first_y, "D"+string(global.player.def*100))

first_y += global.cy_spacing
draw_text(first_x, first_y, "A"+string(global.player.blast_damage))

if (global.player.hp <= 0){

	draw_set_font(gofont)
	draw_text(global.player.x, global.player.y, ".")
}

