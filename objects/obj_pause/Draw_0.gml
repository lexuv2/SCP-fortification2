/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.6);
var xx = scr_get_screen_x()
var yy = scr_get_screen_y()

draw_rectangle_color(xx,yy,xx+scr_get_view_width() , yy+scr_get_view_height() ,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1)