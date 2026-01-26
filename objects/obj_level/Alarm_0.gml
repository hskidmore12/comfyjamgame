global.current_level_score = level_score;
global.final_score += level_score;


switch(level){
	case 1:
		instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_level1_end, setter: noone});
		break;
	case 2:
		instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -100000, obj_black_screen, {target_rm: rm_level2_end, setter: noone});
		break;
}