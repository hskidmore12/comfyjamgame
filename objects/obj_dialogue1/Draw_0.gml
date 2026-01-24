if(instance_exists(obj_textbox)){
	switch(obj_textbox.texts[obj_textbox.text_index]){
		case  "Ya see those stars?\n That's the lodge's rating\n It can go up or down depending on if ya do ya job right.":
			draw_sprite(spr_stars, global.stars - 1, camera_get_view_x(view_camera[0]) + 640,  camera_get_view_y(view_camera[0]));
			break;
		case "That clock let's ya see when ya days almost over.":
			draw_sprite(spr_clock, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
			break;
	}

}
