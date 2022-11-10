randomize()

globalvar points;

points = 0
high_score = 0

if room = rm_game {
	globalvar player_lives;
	player_lives = 3;
}

lives_x = 100; // where to start drawing lives x
lives_y = 20; // where to start drawing lives y 
lives_space = 0; // how much space to put between each sprite 
lives_width = sprite_get_width(spr_player); // the width of the sprite

//instance_create_layer(300,20,obj_chead)
//heads = 1

alarm[0] = 8
alarm[2] = 30
