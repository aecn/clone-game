//y += flea_spd


//if flea_reset == true{
//	y = -100
//	instance_create_layer(x,y,"mushrooms",obj_mushroom)
//	flea_spd = random_range(2,10)
//	x = random_range(0,room_width)
//	flea_reset = false
//}

//if y > room_height {
//	flea_reset = true
//}

//if y > 800 {
//	instance_destroy()
//}

if flea_fall = 0
y += 2
if flea_fall = 1
y += 4
if y > 800
instance_destroy()





