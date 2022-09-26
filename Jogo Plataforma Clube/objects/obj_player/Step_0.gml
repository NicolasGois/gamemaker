direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check_pressed(vk_space);

hveloc = (direita - esquerda) * veloc;

if (hveloc != 0) image_xscale = sign(hveloc);

if !place_meeting(x, y + 1, obj_bloco){
	vveloc += grv;
}else{
if cima{
	vveloc = -10;
}
}

if place_meeting(x + hveloc, y, obj_bloco){
	while !place_meeting(x + sign(hveloc), y, obj_bloco){
		x += sign(hveloc);
	}
	hveloc = 0;
}

x += hveloc

if place_meeting(x, y + vveloc, obj_bloco){
	while !place_meeting(x, y + sign(vveloc), obj_bloco){
		y += sign(vveloc);
	}
	
		vveloc = 0;
}

y += vveloc;
