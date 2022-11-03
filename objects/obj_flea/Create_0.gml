flea_reset = false
flea_spd = random_range(3,10)

if audio_is_playing(snd_flea) {
	audio_stop_sound(snd_flea)
	audio_play_sound(snd_flea,1,0)
}

instance_create_layer(x,y,"mushrooms",obj_mushroom)
alarm[0] = 4








