xy = get_xy_angle(global.player.x, global.player.y, distance_from_player, angulation)

x = xy[0]
y = xy[1]

angulation += orbit_speed

if (angulation > 360){
	angulation = 0
}
