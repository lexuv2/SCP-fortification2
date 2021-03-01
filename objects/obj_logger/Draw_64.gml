/// @description Insert description here
// You can write your code in this editor
var siz = ds_list_size(loglist)
draw_set_color(c_white)
for (var i=0;i<siz;i++)
{
	draw_text(  display_get_gui_width() - (display_get_gui_width()/4) ,display_get_gui_height()-(i*30)-60,loglist[| siz-i-1]);
}