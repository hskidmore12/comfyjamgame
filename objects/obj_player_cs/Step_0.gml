if(!instance_exists(obj_car)){
	y += yspd;
}
if(position_meeting(x, y, obj_room_change)){
	instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_level1, setter: obj_dialogue1});
	instance_destroy();
}