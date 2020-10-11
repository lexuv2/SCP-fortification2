/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_pause))exit;
if (!in_hands) exit;


var prede = depth;
depth = layer_get_depth("Instances_3")-100

var hh = sprite_get_height(croshair_sprite);
var ww = sprite_get_width(croshair_sprite);

var of1 = 5;
var of2 =15;

draw_set_alpha(0.8)





if reload_progress>0
draw_healthbar(mouse_x-ww/2,of1+mouse_y+hh/2,mouse_x+ww/2,of2+mouse_y+hh/2, (1-(reload_progress/(reload_time_sec*60))) *100,c_black,c_white,c_white,90,1,0)
else
draw_healthbar(mouse_x-ww/2,of1+mouse_y+hh/2,mouse_x+ww/2,of2+mouse_y+hh/2,(mag_ammo/mag_size)*100,c_black,c_white,c_white,0,1,0)




depth=prede;
draw_set_alpha(1)