xy = get_xy_angle(global.player.x, global.player.y, distance_from_player, angulation)

x = xy[0]
y = xy[1]

angulation += orbit_speed

if (angulation > 360){
	angulation = 0
}

// Check if broken

if (durability <= 0){
	image_alpha = 0
}else{
	image_alpha = 1
}


// Self repair if new horde
if (global.new_horde){
	durability = max_durability
}
