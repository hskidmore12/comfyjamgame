depth = -75;

//pickup key
pickup = keyboard_check_pressed(vk_space);
//Once box is completed
if(complete){
	alarm[0] = 120;
	complete = false;
	delivery = true;
	if(held){
		obj_player.holding_item = false;
	}
	if(!expired){	
		image_index = 5;
		obj_level.completions++;
		obj_level.complete_count++;
		obj_level.level_score += score_inc;
	}
}
if(!instance_exists(obj_pauser)){
	time = alarm[1];
}
else{
	alarm[1] = -1;
}
alarm[1] = time;
//pickup box drop if held

//move box if held
if(held){
	if(obj_player.face == UP){
		x = obj_player.x;
		y = obj_player.y - 20;
	}
	else if(obj_player.face == DOWN){
		x = obj_player.x;
		y = obj_player.y + 20;
	}
	else if(obj_player.face == LEFT){
		x = obj_player.x - 20;
		y = obj_player.y;
	}
	else{
		x = obj_player.x + 20;
		y = obj_player.y;
	}
		
	
}
else{
	x = x;
	y = y;
}