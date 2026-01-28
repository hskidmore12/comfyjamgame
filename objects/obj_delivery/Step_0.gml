if(place_meeting(x, y, obj_box) and instance_place(x, y, obj_box).box_num == floor_id){
	var box_placed = instance_place(x, y, obj_box);
	box_placed.held = false;
	obj_player.holding_item = false;
	if(!box_placed.delivery){
		box_placed.complete = true; 
	}
}
