/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite_index=noone

alarm[0]=4

var len = 70;
var dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)

x = obj_player.x + lengthdir_x(len,dir)
y = obj_player.y + lengthdir_y(len,dir)

light[|eLight.X]=x;
light[|eLight.Y]=y;

