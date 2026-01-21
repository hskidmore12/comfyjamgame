if(!instance_exists(obj_textbox)){
	instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "game", obj_level);
	instance_destroy();
}
