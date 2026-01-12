if alpha <= 0.99 {
	alpha += 0.01;
	alarm[0] = day_time;
}
else if alpha > 0.99 {
	alarm[1] = 1;
}