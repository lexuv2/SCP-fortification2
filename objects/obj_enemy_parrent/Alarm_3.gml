/// @description Insert description here
// You can write your code in this editor
alarm_set(3,120)
var aim = obj_player.id
if !(collision_line(x,y,aim.x,aim.y,obj_collsision,false,true))
{
	var inst = instance_create_layer(x,y,"instances_2",projectile)
	inst.speed=10;
	inst.direction=point_direction(x,y,aim.x,aim.y)
}