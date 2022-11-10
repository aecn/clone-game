	// score
if points > high_score {
	high_score = points
}
	
//// centipede sound

// spider sound
if instance_exists(obj_spider) {
	if !audio_is_playing(snd_spider)
	audio_play_sound(snd_spider,1,0)
} else {
	audio_stop_sound(snd_spider)
}

if room == rm_start {
	points = 0
	if keyboard_check_pressed(vk_enter){
		room_goto(rm_game)
	}
}

if room == rm_game{
	if player_lives <= 0 {
	room_goto(rm_end) // out of lives = game over
	}
	
		// create mushrooms
//for (var i = 0; i < 10; i += 1) {
//    instance_create_layer(32, 32 + (i * 32), "mushrooms", obj_mushroom);
//}
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