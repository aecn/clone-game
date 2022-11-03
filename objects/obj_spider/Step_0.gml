image_speed = 0.5;

if y_dir = 0
	y -= 3
if y_dir = 1
	y += 3

if stop = 0 {
if x_dir = 0
x += 3
else
x -= 3
}

// go after this y point
if y < 580
	y_dir = 1

// dont go beyond this y point
if y > 780
	y_dir = 0

// destroy once it goes off screen
if x_dir = 0 and x = 640
	instance_destroy()

if x_dir = 1 and x = -40
	instance_destroy()








