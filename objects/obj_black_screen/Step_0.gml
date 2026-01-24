if(room = target_rm){
	instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1000000, obj_black_screen_reverse, {dialogue: setter});
	instance_destroy();
}