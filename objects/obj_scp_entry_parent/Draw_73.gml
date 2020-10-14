/// @description Insert description here
// You can write your code in this editor
//draw_self()

text = string_upper(text)

var xoff= sprite_width/2;
var yoff= sprite_height/2;

var padding = 10;



var xx =  scr_get_screen_x() + 1920/2;
var yy =  scr_get_screen_y() +1080/2;



if selected
{
	draw_sprite_ext(sprite_index,0,x,y,1.2,1.2,0,col,1)
draw_set_font(font_pixel_32)

draw_sprite_ext(sprite_index,0,xx,yy,2,2,0,c_white,1);
draw_text_ext(xx,yy,string(id)+ text,-1,2*sprite_width-padding)
}
else
{
	draw_sprite_ext(sprite_index,0,x,y,1,1,0,col,1)
}


