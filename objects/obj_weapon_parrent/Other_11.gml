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
	sequence  = layer_sequence_create(layer,x,y,shooting_sequence)
}




audio_play_sound(shoot_sound,0,false)

ex_camera_shake("main",recoil/2000,recoil/2000,0,5,1,0,0)
//shake cae4ra

rec_anim=true

var dir = point_direction(x,y,mouse_x,mouse_y)
var inst=instance_create_layer(x,y,layer,obj_light_torch)
inst.sl_light_color=make_color_rgb(255, 255, 128)
inst.sl_light_texture = spr_light01
inst.sl_light_xscale = 3;
inst.sl_light_yscale = 3;
inst.sl_light_shadowlength=5;
inst.sl_light_ambientpower=0.6;
inst.sl_light_power_override = 0.3;
inst.alarm[2]=4;
with(inst)
{
	SL_light_cast_obj( obj_player, -1 );
	dist = 75
}