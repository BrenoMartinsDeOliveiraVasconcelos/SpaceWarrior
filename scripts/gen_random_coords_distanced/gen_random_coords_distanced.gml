function gen_random_coords_distanced(amount, distance, max_x, max_y) {
    var coords = [];
    var attempts = 0;
    var max_attempts = amount * 50; 

    while (array_length(coords) < amount && attempts < max_attempts) {
        attempts++;
        
        var x_pos = irandom_range(0, max_x);
        var y_pos = irandom_range(0, max_y);
        var valid = true;

        for (var i = 0; i < array_length(coords); i++) {
            var existing = coords[i];
            
            if (euclidian_distance(x_pos, y_pos, existing[0], existing[1]) < distance) {
                valid = false;
                break; 
            }
        }

        // If it survived the check, add it
        if (valid) {
            array_push(coords, [x_pos, y_pos]);
        }
    }

    if (attempts >= max_attempts) {
        show_debug_message("Warning: Could not fit all points within distance.");
    }

    return coords;
}