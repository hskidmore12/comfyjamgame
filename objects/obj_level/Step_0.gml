if((alarm[0] / 60) == 135){
	obj_clock.sprite_time = 1;
}
if((alarm[0] / 60) == 90){
	obj_clock.sprite_time = 2;
}
if((alarm[0] / 60) == 45){
	obj_clock.sprite_time = 3;
}
if(!instance_exists(obj_pauser)){
	time = alarm[0];
}
else{
	alarm[0] = -1;
}
alarm[0] = time;
switch(level){
	case 1:
		if(expiration_count == 1){
			global.stars--;
			expiration_count = 0;
		}
		if(complete_count == 3){
			global.stars++;
			complete_count = 0;
		}
	case 2:
		if(expiration_count == 2){
			global.stars--;
			expiration_count = 0;
		}
		if(complete_count == 3){
			global.stars++;
			complete_count = 0;
		}
}
if(global.stars == 0){
	room_goto(rm_game_over);	
}