if(!complete and !delivery){	
	expired = true;
	image_index = 4;
	obj_level.expires++;
	obj_level.expiration_count++;
	obj_level.level_score -= 100;
}