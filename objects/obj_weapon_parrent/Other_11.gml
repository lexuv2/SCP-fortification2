/// @description visual efects
// You can write your code in this editor
if sprite_exists(shooting_anim)
sprite_index=shooting_anim

var casing = instance_create_layer(x,y,"layer_weapons",obj_casing)
casing.direction=(image_angle)+(110 *image_yscale)
if sequence
{
	layer_sequence_destroy(sequence)
	sequence=noone;
}


if sequence_exists(shooting_sequence)
{
	sequence  = layer_sequence_create("layer_weapons",x,y,shooting_sequence)
}




audio_play_sound(shoot_sound,0,false)

ex_camera_shake("main",recoil/2000,recoil/2000,0,5,1,0,0)
//shake cae4ra

rec_anim=true

var dir = point_direction(x,y,mouse_x,mouse_y)
var len = obj_player.sprite_height/2+5
var inst=instance_create_layer(x+lengthdir_x(len,dir),y+lengthdir_y(len,dir),"Lights",obj_light_muzzle_flash)

