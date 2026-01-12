if alpha >= 0.01 {
	alpha -= 0.01;
	alarm[1] = night_time;
}
else if alpha < 0.01 {
	alarm[0] = 1;
	days += 1;
}