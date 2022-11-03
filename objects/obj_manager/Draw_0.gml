// title screen
if room = rm_start {
	draw_set_color(#FFFF00);
	draw_set_font(chilopod);
	draw_text(60, 200, "CENTIPEDE")
	draw_set_color(#FFFFFF);
	draw_set_font(public_pixel)
	draw_text(110, 300, "PRESS ENTER TO START")	
}

// game screen
if room = rm_game {
	// score
	draw_set_font(public_pixel);
	draw_set_color(c_red);
	draw_text(10,10,global.points);
	
	// lives
	for (var i = 0; i < global.player_lives; i++){
    draw_sprite(spr_player, 1, lives_x + (i * lives_width/2) + (i * lives_space), lives_y);
	}

	// high score
	if points > high_score {
	high_score = points
	}

	// high score
	draw_set_font(public_pixel);
	draw_set_color(c_red);
	draw_text(300,10, high_score);
}

// death / ending screen
if room = rm_end {
	draw_set_font(public_pixel);
	draw_set_color(#FF0000);
	draw_text(210, 200, "GAME OVER");
	draw_set_color(#FFFFFF)
	draw_text(100, 300, "PRESS ENTER TO RESTART");
}

// win screen
if room = rm_win {
	
}












