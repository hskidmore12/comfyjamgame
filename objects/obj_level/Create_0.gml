expires = 0;
expiration_count = 0;
completions = 0;
complete_count = 0;
level = 1;
level_score = 0;
instance_create_layer(x, y, "game", obj_box_spawner);
alarm[0] = 10; //10800 for 3 minutes
instance_create_depth(camera_get_view_speed_x(view_camera[0]), camera_get_view_speed_y(view_camera[0]), -1000, obj_clock);
