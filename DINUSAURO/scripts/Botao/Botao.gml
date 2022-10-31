// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_button(){
	balpha = 1;
	bscale = 1;

}

function create_button(x, y, sprite){
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_x_to_gui(0);
	
	var _sprw = sprite_get_width(sprite)/2;
	var _sprh = sprite_get_width(sprite)/2;
	var _x1 = x + _sprw;
	var _y1 = y + _sprh;
	
	if point_in_rectangle(_mx, _my, _x1 - _sprw, _y1 - _sprh, _x1 + _sprw, _x1 + _sprh){
		balpha = 1;
		//scale = 1.2;
		bscale = lerp(bscale, 1.2, 0.05);
		
		if mouse_check_button_pressed(mb_left){
			room_restart();
		
		}
	}else{
		balpha = .6;
		//scale = 1;
		bscale = lerp(bscale, 1, 0.05);
	}
	
	draw_sprite_ext(sprite, 0, _x1, _y1, bscale, bscale, 0, c_white, balpha);
}