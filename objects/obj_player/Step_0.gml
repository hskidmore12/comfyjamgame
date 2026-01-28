//Keyboard Checks
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
pickup = keyboard_check_pressed(vk_space);
//movement calculations
depth = -50;
xspd = (right - left) * mspd;
yspd = (down - up) * mspd;
if instance_exists(obj_pauser)
{
		xspd = 0;
		yspd = 0;
}

//Collisions
if(place_meeting(x + xspd, y, obj_wall)){
	while(!place_meeting(x + sign(xspd), y, obj_wall)){
		x += sign(xspd);
	}
	xspd = 0;
}
if(place_meeting(x, y + yspd, obj_wall)){
	while(!place_meeting(x, y + sign(yspd), obj_wall)){
		y += sign(yspd);
	}
	yspd = 0;
}
//pickup box
if(instance_exists(obj_box)){	
	if(pickup){
		var box =  instance_nearest(x, y, obj_box);
		if((!box.complete and !box.delivery)){
			if(box.held == false and distance_to_object(box) < 10 and !holding_item){
				box.held = true;
				holding_item = true;
			}
			else if(box.held){
				box.held = false;
				holding_item = false;
			}
		}
	}
}
//set sprite

mask_index = sprite[DOWN]

if yspd = 0
	{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
	}
if xspd > 0 && face = LEFT {face = RIGHT};
if xspd < 0 && face = RIGHT {face = LEFT};
if xspd = 0
	{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
	}
if yspd > 0 && face = UP {face = DOWN};
if yspd < 0 && face = DOWN {face = UP};

sprite_index = sprite[face];

if xspd == 0 && yspd == 0
	{
		image_index = 0;
	}

//Actually Move
x += xspd;
y += yspd;