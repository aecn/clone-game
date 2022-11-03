// player death sound + animations
instance_destroy()
instance_create_layer(x,y,"enemies",obj_pdeath)

if (global.player_lives > 0) {
	global.player_lives -=1
	alarm[1] = 60
} else {
	room_goto(rm_end)
}









