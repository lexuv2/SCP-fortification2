/// @description Insert description here
// You can write your code in this editor
white_effect = 1;
alarm_set(2,5)


part_emitter_region(global.part_system,emmiter,x,x,y,y,0,0);
part_type_direction(global.part_blood,other.direction-20,other.direction+20,0,0)
part_emitter_burst(global.part_system,emmiter,global.part_blood,irandom_range(10,20))

audio_play_sound(snd_hitmarker,1,0)


hp-=(other.speed/20)*other.damage;
other.hp-=1
if hp <=0
{

	
	
instance_destroy(id)
}