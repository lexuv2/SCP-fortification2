/// @description Insert description here
// You can write your code in this editor
if sprite_exists(shooting_anim)
sprite_index=shooting_anim

if sequence
{
	layer_sequence_destroy(sequence)
	sequence=noone;
}


if sequence_exists(shooting_sequence)
{
	sequence  = layer_sequence_create("instances_3",x,y,shooting_sequence)
}




audio_play_sound(shoot_sound,0,false)
shakeIntensity+=recoil*2
//ex_camera_shake()
rec_anim=true

var dir = point_direction(x,y,mouse_x,mouse_y)
var inst=instance_create_layer(x,y,layer,obj_light_torch)
inst.sl_light_color=c_yellow
inst.sl_light_texture = spr_light01
inst.alarm[2]=2;
with(inst)
{
	SL_light_cast_obj( oPlayer, -1 );
	dist = 60
}