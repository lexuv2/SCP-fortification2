/// @description Insert description here
// You can write your code in this editor

draw_self()
if(instance_exists(obj_pause))exit;



if reload_progress>0
draw_healthbar(x-10,y+10,x+10,y+15,(reload_progress/(reload_time_sec*60))*100,c_black,c_white,c_white,90,true,true)