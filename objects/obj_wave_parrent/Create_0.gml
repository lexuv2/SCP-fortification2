/// @description Insert description here
// You can write your code in this editor
enemy_que = ds_queue_create()
alarm_set(0,wave_delay)
 inst = instance_create_layer(0,0,"instances_2",obj_popup_byg)
inst.time=wave_delay
finish=false