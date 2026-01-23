//get inputs
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));
select = keyboard_check_pressed(vk_space);

//move through menu
pos += down - up;

if (pos >= op_length) {
	pos = 0
}
if (pos < 0) {
	pos = op_length - 1;
}

//using options
if(select){	
	switch(pos){
	
		//Start game
		case 0 :
			room_goto(rm_initial);
			break;
	
		//end
		case 1:
			game_end();
			break;
	
	}
}