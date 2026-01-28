if(object_exists(obj_cutscene)){
	x += xspd;
}
if(x < -64){
	instance_destroy();
}
