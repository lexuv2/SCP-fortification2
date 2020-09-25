/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var nearst = instance_nearest(x,y,obj_player)

direction = point_direction(x,y,nearst.x,nearst.y)
speed = move_speed