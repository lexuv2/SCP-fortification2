/// @description Insert description here
// You can write your code in this editor
tick+=10
draw_self()
var dir = point_direction(x,y,startx,starty)
draw_line_width_color(x,y,lengthdir_x(tick,dir)+x,lengthdir_y(tick,dir)+y,3,c_gray,c_gray)