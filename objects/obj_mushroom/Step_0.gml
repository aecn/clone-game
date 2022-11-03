// need 4 hits to destroy and earn 1 point
if hits = 4 {
	points += 1
	instance_destroy()
}

// sprite control
image_index = 4 + hits


if place_meeting(x,y,obj_mushroom) {
	instance_destroy()
}










