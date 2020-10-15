/// @description Insert description here
// You can write your code in this editor
//draw_self()



var xoff= sprite_width
var yoff= sprite_height

var padding = 10;



var xx =  scr_get_screen_x() + 1920/2;
var yy =  scr_get_screen_y() +1080/2;



if selected
{
	draw_sprite_ext(sprite_index,0,x,y,1.2,1.2,0,col,1)
draw_set_font(font_pixel_17)

draw_sprite_ext(sprite_index,0,xx,yy,2,2,0,c_white,1);
draw_set_color(c_black)
draw_set_halign(fa_left)
var w = sprite_width*1.5-padding;
draw_text_ext(xx-xoff+padding,yy-yoff+padding, special_containmanet_precedures,-1,w);
var h = string_height_ext(special_containmanet_precedures, -1, w);
w = 2*sprite_width-padding;
draw_text_ext(xx-xoff+padding,h+yy-yoff+padding,string(id)+ description,-1,w)
}
else
{
	draw_sprite_ext(sprite_index,0,x,y,1,1,0,col,1)
}


