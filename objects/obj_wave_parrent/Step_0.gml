/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pause) exit

if instance_exists(inst) and !finish
{
inst.text ="WAVE "+wavenumber+" In "+string(wave_delay div 60)+" seconds"
wave_delay--;

if (wave_delay div 60 <=1)
alarm_set(0,spawn_delay);
}