//// centipede sound

// spider sound
if instance_exists(obj_spider) {
	if !audio_is_playing(snd_spider)
	audio_play_sound(snd_spider,1,0)
} else {
	audio_stop_sound(snd_spider)
}

if room == rm_start {
	if keyboard_check_pressed(vk_enter){
		room_goto(rm_game)
	}
}

if room == rm_game{
	if player_lives <= 0 {
		room_goto(rm_end) // out of lives = game over
	}
}

if room == rm_end {
	if keyboard_check_pressed(vk_enter) {				
		room_goto(rm_start)
		player_lives = 3
		points = 0
	}
}

if room == rm_win {
	if keyboard_check_pressed(vk_enter) {				
		room_goto(rm_start)
		player_lives = 3
		points = 0
	}
}