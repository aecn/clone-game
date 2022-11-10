// flea sound
if instance_exists(obj_flea) {
	if !audio_is_playing(snd_flea)
	audio_play_sound(snd_flea,1,0)
} else {
	audio_stop_sound(snd_flea)
}

flea_fall = 0
//if irandom(9) < 6
////and !place_meeting(x,y,obj_centi)
//instance_create_layer(floor(x/8)*8,y,obj_mushroom)
alarm[0] = 4





