if (durability > 0){
	durability -= loss_factor
	blast = instance_create_layer(other.x, other.y, "Instances", oExplosion)
	instance_destroy(other)
}