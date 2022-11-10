// centipede movement

// centipede head
if act = 1 {
	
	if hdirection = 0 {
		x += 3
	// go around mushrooms
	if place_meeting(x+1,y,obj_mushroom) {
		x = (floor(x/20)*20)-(x mod 20)
	if up = 0
		y += 20
	else
		y -= 20
		hdirection = 1
	}
	if x > 580 {
		x = 580
	if up = 0
		y += 20
	else
		y -= 20
		hdirection = 1
	}
	if place_meeting(x,y,obj_chead)
	and other.hdirection = hdirection
		x -= 3
	}
	
	if hdirection = 1 {
		x -= 3
	if place_meeting(x-1,y,obj_mushroom) {
	if up = 0
		y += 20
	else
		y -= 20
	if place_meeting(x,y-20,obj_mushroom)
		x = (floor(x/20)*20)+(20-(x mod 20))
	else
		x = (floor(x/20)*20)-(x mod 20)
		hdirection = 0
	}
	if x < 0 {
		x = 0
	if up = 0
		y += 20
	else
		y -= 20
		hdirection = 0
	}
	if place_meeting(x,y,obj_chead)
	and other.hdirection = hdirection
		x += 20
	}
}

// sprite
//if anim = 15
//anim = 0
//else
//anim += 1
//image_index = floor(anim/4)+(dir*4)+(head*8)

// centipede body
if up = 0 {
	
	if hdirection = 0 {
		if place_meeting(x+5,y,obj_chead)
		or place_meeting(x,y+20,obj_chead)
			head = 0
		else
			head = 1
	}

	if hdirection = 1 {
		if place_meeting(x-5,y,obj_chead)
		or place_meeting(x,y+20,obj_chead)
			head = 0
		else
			head = 1
	}
}


if up = 1 {
	if hdirection = 0 {
		if place_meeting(x+5,y,obj_chead)
		or place_meeting(x,y-20,obj_chead)
			head = 0
	else
			head = 1
	}
	
	if hdirection = 1 {
		if place_meeting(x-5,y,obj_chead)
		or place_meeting(x,y-20,obj_chead)
			head = 0
	else
			head = 1
	}
}


if y > 800 {
	up = 1
}

if y < 780 {
	up = 0
}

















