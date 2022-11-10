// player death sound + animations
audio_play_sound(snd_death,1,0)
instance_destroy()
instance_create_layer(x,y,"enemies",obj_pdeath)

if (global.player_lives > 0) {
	global.player_lives -=1
	instance_create_layer(300, 780, "player", obj_player)
} else {
	room_goto(rm_end)
}









