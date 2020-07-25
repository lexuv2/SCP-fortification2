/// @description Insert description here
// You can write your code in this editor

if (!ds_queue_empty(enemy_que))
{

	 wazadozrobienia = ds_queue_dequeue(enemy_que);
	if wazadozrobienia = scp_waza
	{
	with(obj_vase_spawn)
	{
		instance_create_layer(x,y,"instances_2",scp_waza)
	}
	}
	else
	{
	instance_create_layer(obj_enemy_spawner.x,obj_enemy_spawner.y,"instances",wazadozrobienia)
	}
	alarm_set(0,spawn_delay)
}
else
{
	if !instance_exists(obj_enemy_parrent) and !finish
	{
	alarm[1]=120
	 inst = instance_create_layer(0,0,"instances_2",obj_popup_byg)
	inst.time=120
	inst.text="WAVE COMPLETE"
	finish=true
	}
	alarm_set(0,spawn_delay)
}