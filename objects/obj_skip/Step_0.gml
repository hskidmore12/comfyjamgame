//get inputs
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));
select = keyboard_check_pressed(vk_space);

//move through menu
pos += down - up;

if (pos >= op_length-1) {
	pos = 1
}
if (pos < 1) {
	pos = op_length - 1;
}

//using options
if(select){	
	switch(pos){
	
		//Start game
		case 1 :
			instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_level1, setter: obj_dialogue1});
			break;
	
		//end
		case 2:
			instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_intro, setter: noone});
			break;
	
	}
}