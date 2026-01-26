timer = irandom_range(8, 12);
alarm[0] = timer * 60;
i = irandom_range(48, 164);
while(place_meeting(511, i, obj_box)){
	i = irandom_range(48, 164);
}
if(instance_number(obj_box) < 5){
	switch(obj_level.level){
		case 1:
			instance_create_layer(511, i, "Instances", obj_box, {box_timer: 1800});
			if(!audio_is_playing(sd_the_list)){
				audio_play_sound(sd_the_list, 10, false);
				}
			break;
		case 2:
			instance_create_layer(511, i, "Instances", obj_box, {box_timer: 1500});
			if(!audio_is_playing(sd_the_list)){
				audio_play_sound(sd_the_list, 10, false);
				}
			break;
	}
	boxes_spawned++;
}