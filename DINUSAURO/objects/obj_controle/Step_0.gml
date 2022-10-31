if global.dormindo == false{
	global.velocidade -= 1/600
	global.pont += 1/6;
	layer_hspeed("Background", global.velocidade);
}else{
	global.velocidade = 0;
	layer_hspeed("Background", 0);
}