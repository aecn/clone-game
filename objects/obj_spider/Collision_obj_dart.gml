// score depends on how close the spider is to the player / blaster: 
// furthest away: only 300 points
if y < 0 {
	points += 300
	instance_create_layer(x, y, "enemies", obj_300);
}	

// near the middle / closer: 600 points
if y > 600 and y < 700 {
	points += 600
	instance_create_layer(x, y, "enemies", obj_600);
}

// very close: 900 points
if y > 700 {
	points += 900
	instance_create_layer(x, y, "enemies", obj_900);
}

// spider gets destroyed when hit by the dart
instance_destroy();
instance_create_layer(x, y, "enemies", obj_edeath);
audio_play_sound(snd_edeath, 1, 0)

// respawning attempt
//instance_create_layer(random_range(20, 580), random_range(500, 680), "enemies", obj_spider)











