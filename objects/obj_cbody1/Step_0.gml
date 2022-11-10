/// @description Movement Controls
if act = 1 {
	
	if bdirection = 0 {
		x += 3
	if place_meeting(x+1,y,obj_mushroom) {
		x = (floor(x/20)*20)-(x mod 20)
		y += 20
		bdirection = 1
	}
	if x > 580 {
		x = 580
		y += 20
		bdirection = 1
	}
	}
	
	if bdirection = 1 {
		x -= 3
	if place_meeting(x-1,y,obj_mushroom) {
		y += 20
	if place_meeting(x,y-20,obj_mushroom)
		x = (floor(x/20)*20)+(20-(x mod 20))
	else
		x = (floor(x/20)*20)-(x mod 20)
		bdirection = 0
	}
	
	if x < 0 {
		x = 0
		y += 20
		bdirection = 0
	}
	}
}

//image_index = floor(anim/4)+(dir*4)+(head*8)

if y > 800 {
	instance_destroy()
}
