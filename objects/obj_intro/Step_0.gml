if(keyboard_check_pressed(vk_space)){
	instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_intro_cutscene, setter: obj_cutscene});
}
