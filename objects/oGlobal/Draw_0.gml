font = font_add_sprite_ext(fGamefont, "0123456789", 0, 2)

draw_set_font(font)

first_x = 10

draw_text(first_x, global.game_y, zfilled_number(global.number_zeroes , global.player.gamescore))

first_x += global.lx_spacing

draw_text(first_x, global.game_y, string(global.player.hp))