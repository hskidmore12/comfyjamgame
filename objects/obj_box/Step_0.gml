//pickup key
pickup = keyboard_check_pressed(vk_space);

if(!complete){
	
}
//pickup box drop if held
if(pickup){
	if(!complete){
		if(held == false and distance_to_object(obj_player) < 10){
			held = true;
		}
		else if(held){
			held = false;
			obj_player.item_held = noone;
		}
	}
}
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