if global.dormindo == false{	
	var _inst = instance_create_layer(room_width, 120, "Instances",	obj_obstaculo);
	_inst.image_index = irandom(1);

    alarm[0] = irandom_range(room_speed * 1.4, room_speed * 1.8);

}