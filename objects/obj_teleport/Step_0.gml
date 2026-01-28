if place_meeting(x, y, obj_player) && !instance_exists(obj_transition)
	{
	var inst = instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -10000, obj_transition);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_face = target_face;
}