function gen_random_coords_distanced(amount, distance, max_x, max_y){
	var coords = []
	
	for (var item = 0; item < amount; item+=1){
		var x_pos = irandom_range(0, max_x)
		var y_pos = irandom_range(0, max_y)
		var coordinates =  [x_pos, y_pos]
		var add = true
		
		if (item == 0){
			add = true
		}else{
			add = true
			for (var index=0; index<array_length(coords); index+=1){
				index_value =  coords[index]
				distance_from_index = euclidian_distance(x_pos, y_pos, index_value[0], index_value[1])
				
				if (distance_from_index < distance) {
					add = false
				}
			}
			
			if (!add){
				item-=1
				continue
			}else{
				array_push(coords, coordinates)
				show_debug_message(string(x_pos) + ", "+ string(y_pos))
			}
		}
	}
	
	return coords
}