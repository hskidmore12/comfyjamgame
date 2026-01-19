alarm[0] = timer * 60;
i = irandom_range(320, 600);
if(instance_number(obj_box) < 5){
	instance_create_layer(i, 150, "Instances", obj_box);
	boxes_spawned++;
}