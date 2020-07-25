/// @description Insert description here
// You can write your code in this editor


if was_need_shower  and !instance_exists(obj_textbox_needshower)
{
	if point_distance(x,y,700,450)>10
	{
	move_towards_point(700,450,2)
	wiggle=true
	}
	else
	{
		speed=0
		wiggle=false
		image_angle=0
		alarm_set(2,1)
	}
	
	
}

if was_showertime and !instance_exists(obj_textboxshowerimte)
{
	speed=1
	direction=90
}


if !wiggle exit

if rot 
image_angle+=0.5
else
image_angle-=0.5



