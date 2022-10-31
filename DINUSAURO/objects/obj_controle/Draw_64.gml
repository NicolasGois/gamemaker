draw_set_font(fnt_normal);
draw_set_color(c_white);
draw_text(460, 10, "Score: " + string(floor(global.pont)))
if global.dormindo == true{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(display_get_gui_width()/2, display_get_gui_height()/2 - 30, "Sua capivara foi de Vasco...", c_white, c_white, c_white, c_white , 1);
	create_button(display_get_gui_width()/2, display_get_gui_height()/2, spr_restart);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
}
       