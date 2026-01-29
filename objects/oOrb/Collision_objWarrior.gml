if (sprite_index == sDef){
	other.def += (other.def*0.5)
	
	if (other.def > 0.9){
		other.def = 0.9
	}
}

if (sprite_index == sHealthBoost){
	other.frames_per_recover -= round(other.frames_per_recover * 0.25)
	other.hp_recover_rate -= (other.hp_recover_rate * 0.10)
	
	if (other.frames_per_recover < 5){
		other.frames_per_recover = 5
	}
	
	if (other.hp_recover_rate > other.hp_max*0.9){
		other.hp_recover_rate = other.hp_max * 0.9
	}
}

if (sprite_index == sAddExplosive){
	other.explosives += 1
}

if (sprite_index == sBlastSpeed){
	other.frames_per_blast -= round(other.frames_per_blast * 0.1)
	other.blast_damage += other.blast_damage*0.1
}

if (sprite_index == sMaxHP){
	other.hp_max += (other.hp_max*0.1)
}

instance_destroy(self)