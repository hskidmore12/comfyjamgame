if(!instance_exists(obj_textbox)){
	instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "game", obj_level, {level: 1});
	instance_destroy();
}
if(instance_exists(obj_textbox)){	
	switch(obj_textbox.texts[obj_textbox.text_index]){
		case "1, down below":
			obj_camera.x = 308
			obj_camera.y = 1300;
			break;
		case "2 and 3 are to the left":
			obj_camera.x = 1866;
			obj_camera.y = 258;
			break;
		case "and 4 is up.":
			obj_camera.x = 1182;
			obj_camera.y = 1192;
			break;
		case "When a box comes in you'll hear this sound.":
			if(!audio_is_playing(sd_the_list)){
				audio_play_sound(sd_the_list, 10, false);
			}
			break;
	}



}