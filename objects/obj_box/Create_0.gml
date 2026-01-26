held = false;
box_num = floor(random_range(1, 5));
complete = false;
delivery = false;
expired = false;
alarm[1] = box_timer;
switch(obj_level.level){
	case 1:
		score_inc = 100;
		time = alarm[1];
		break;
	case 2:
		score_inc = 200;
		time = alarm[1];
		break;
}
switch(box_num){
	case 4:
		image_index = 3;
		draw_self();
		break;
	case 3:
		image_index = 2;
		draw_self();
		break;
	case 2:
		image_index = 1;
		draw_self();
		break;
	case 1:
		image_index = 0;
		draw_self();
		break;
}