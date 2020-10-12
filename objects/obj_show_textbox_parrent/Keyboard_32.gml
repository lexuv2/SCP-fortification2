/// @description Insert description here
// You can write your code in this editor
if !can_skip exit

if instance_to_create_after_destory
instance_create_layer(0,0,"Instances_2",instance_to_create_after_destory)
alarm_set(4,4)

if seq!=-1
layer_sequence_play(seq)