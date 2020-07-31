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
rec_anim=true