/// @description Insert description here
// You can write your code in this editor
if !can_place exit
instance_create_layer(mouse_x,mouse_y,"instances_2",turret)
audio_play_sound(nsd_place_turret,0,0)
instance_destroy(id)
