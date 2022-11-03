y += flea_spd


if flea_reset == true{
	y = -100
	flea_spd = random_range(2,10)
	x = random_range(0,room_width)
	flea_reset = false
}

if y > room_height {
	flea_reset = true
}

if y > 800 {
	instance_destroy()
}







