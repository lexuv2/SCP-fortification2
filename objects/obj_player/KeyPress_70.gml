/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_light_torch)
instance_create_layer(0,0,"Lights",obj_light_torch)
else
instance_destroy(obj_light_torch)