//get inputs
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));
if(!instance_exists(obj_black_screen)){
	select = keyboard_check_pressed(vk_space);
}
//move through menu
pos += down - up;

if (pos >= op_length) {
	pos = 0
}
if (pos < 0) {
	pos = op_length - 1;
}

//using options
if(select){	
	switch(pos){
	
		//Start game
		case 0 :
			instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_skip, setter: noone});
			select = noone;
			break;
	
		//end
		case 1:
			game_end();
			break;
	
	}
}