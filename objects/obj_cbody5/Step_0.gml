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


if !instance_exists(obj_cbody4)
	head = 1
else {
	if bdirection = 0 {
		if place_meeting(x+5,y,obj_cbody4)
		or place_meeting(x+20,y,obj_mushroom)
			or x > 560
			head = 0
	else
		head = 1
	}
	if bdirection = 1 {
	if place_meeting(x-5,y,obj_cbody4)
	or place_meeting(x-20,y,obj_mushroom)
	or x < 40
		head = 0
	else
		head = 1
	}
}


if y > 800
instance_destroy()

