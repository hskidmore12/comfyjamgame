var timer_left = alarm[0] / 60;
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + 60, "Score: " + string(level_score));
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + 100, "Level Timer: " + string(timer_left));
switch (global.stars){
	case 5:
		draw_sprite(spr_stars, 4, camera_get_view_x(view_camera[0]) + 640,  camera_get_view_y(view_camera[0]));
		break;
	case 4:
		draw_sprite(spr_stars, 3, camera_get_view_x(view_camera[0]) + 640,  camera_get_view_y(view_camera[0]));
		break;
	case 3:
		draw_sprite(spr_stars, 2, camera_get_view_x(view_camera[0]) + 640,  camera_get_view_y(view_camera[0]));
		break;
	case 2:
		draw_sprite(spr_stars, 1, camera_get_view_x(view_camera[0]) + 640,  camera_get_view_y(view_camera[0]));
		break;
	case 1:
		draw_sprite(spr_stars, 0, camera_get_view_x(view_camera[0]) + 640,  camera_get_view_y(view_camera[0]));
		break;
}	


