// leaves a mushroom when killed
instance_create_layer(floor(x/20)*20,y,obj_mushroom)

// points
if head = 1 {
	points += 100
} else {
	points += 10
}

if instance_number(obj_chead) = 1
obj_manager.alarm[0] = 60
instance_destroy()













