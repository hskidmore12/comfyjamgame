draw_self()

var timer_left = alarm[0] / 60;
var timer1_left = alarm[1] / 60;
draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+20, "Completed Timer: " + string(timer_left));
draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+80, "Expiration Timer: " + string(timer1_left));
