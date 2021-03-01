/// @description Insert description here
// You can write your code in this editor
tick+=speed/80
draw_self()
if !deco exit
if tick <= 50 exit
var dir = point_direction(x,y,startx,starty)
draw_line_width_color(x,y,lengthdir_x(tick,dir)+x,lengthdir_y(tick,dir)+y,3,c_gray,c_gray)