// player movement
if keyboard_check(vk_left) or keyboard_check(ord("A")) {
	x -= 5;
}

if keyboard_check(vk_right) or keyboard_check(ord("D")) {
	x += 5;
}

if keyboard_check(vk_up) or keyboard_check(ord("W")) {
	y -= 5;
}

if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	y += 5;
}

// shooting dart
if canShoot {
    if keyboard_check_pressed(vk_space) {
        canShoot = true;
        alarm[0] = dart_delay;
        instance_create_layer(x, y, "darts", obj_dart)
		audio_play_sound(snd_dart, 1, 0)
    }
}

// restrict player movement
if x < 20 {
	x = 20
}

if x > 580 {
	x = 580
}

if y < 600 {
	y = 600
}

if y > 780 {
	y = 780
}






