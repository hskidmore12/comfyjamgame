
//Keyboard Checks
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
run = keyboard_check(vk_shift);
//movement calculations
if(run){
	hspd = (right - left) * rspd;
	vspd = (down - up) * rspd;
}
else{	
	hspd = (right - left) * mspd;
	vspd = (down - up) * mspd;
}
//Actually Move
x += hspd;
y += vspd;