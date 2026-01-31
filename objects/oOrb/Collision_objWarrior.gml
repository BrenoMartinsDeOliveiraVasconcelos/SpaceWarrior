if (sprite_index == sDef){
	other.def += (other.def*0.2)
	
	if (other.def > global.max_def){
		other.def = global.max_def
	}
}

if (sprite_index == sHealthBoost){
	other.frames_per_recover -= other.frames_per_recover * 0.30
	
	
	if (other.frames_per_recover < 20){
		other.frames_per_recover = 20
	}
	other.hp_recover_rate += other.hp_recover_rate * 0.25
	
	if (other.hp_recover_rate > other.hp_max*0.5){
		other.hp_recover_rate = other.hp_max * 0.5
	}
}

if (sprite_index == sAddExplosive){
	other.explosives += 1
}

if (sprite_index == sBlastSpeed){
	other.frames_per_blast -= other.frames_per_blast * 0.1
	other.blast_damage += other.blast_damage*0.25
}

if (sprite_index == sMaxHP){
	old_hp_max = other.hp_max
	other.hp_max += (other.hp_max*0.25)
	other.hp = other.hp_max
	other.hp_recover_rate  =  (other.hp_recover_rate * other.hp_max)/old_hp_max
}

if (sprite_index == sShieldEnhance){
	global.player.number_shields += 20
	global.player.shield_colision_damage += global.player.shield_colision_damage*0.5
	global.player.shield_impulse += global.player.shield_impulse * 0.5
}

instance_destroy(self)