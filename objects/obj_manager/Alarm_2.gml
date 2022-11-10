if instance_exists(obj_player) {
	rand_check = irandom(5)

	if rand_check = 3
	and !instance_exists(obj_spider) {
	if irandom(1) = 1
		instance_create_layer(-40,780,"enemies", obj_spider)
	else
		instance_create_layer(600,780,"enemies", obj_spider)
	}

	if rand_check = 4 {
	
	if irandom(1) = 0
		instance_create_layer(irandom(29)*20,20,"enemies", obj_flea)
	}
}

alarm[2] = 30