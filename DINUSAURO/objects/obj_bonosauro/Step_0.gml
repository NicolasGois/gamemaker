
if global.dormindo == false{
	
//Movimentação
cima = keyboard_check_pressed(vk_space);
if !place_meeting(x, y + 1, obj_parede){
	//Cair
	v_veloc += gravidade;
	 
	if v_veloc > 0{
		caindo = true;
	}
}else{
	//Pular
	if cima{
		v_veloc = pulo;
	}
}

var _inst = instance_place(x, y + v_veloc, obj_parede);
if _inst{
	while !instance_place(x, y + sign(v_veloc), obj_parede){
		y += sign(v_veloc);
	}
	
	caindo = false;
	v_veloc = 0;
}

y += v_veloc;

//Dinossauro morto
if place_meeting(x, y, obj_obstaculo) and global.dormindo == false{
	global.dormindo = true;
	sprite_index = spr_player_dormindo;
	}
}