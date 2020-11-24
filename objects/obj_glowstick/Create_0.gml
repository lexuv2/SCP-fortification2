/// @description Insert description here
// You can write your code in this editor
inst = instance_create_layer(x,y,"Lights",obj_light_parrent)
inst.color=c_green
inst.scale=1
inst.player_cast_shadow=0;
speed = point_distance(x,y,mouse_x,mouse_y)/10
direction=point_direction(x,y,mouse_x,mouse_y)