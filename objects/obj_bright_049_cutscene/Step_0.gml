/// @description Insert description here
// You can write your code in this editor

if was_minion and !instance_exists(obj_textbox_firstminion)

{
	if !was_follow
 if point_distance(x,y,961,440) > 5
 {
 move_towards_point(961,440,2)
 wiggle=true
 }
 else
 {	if !was_follow
	 {
	 speed= 0 ;
	 wiggle=false;
	 
	 
	 instance_create_layer(0,0,"instances",obj_textbox_followme)
	 was_follow=true;
	 image_angle=0
	 }
 }

}


if !wiggle exit

if rot 
image_angle+=0.5
else
image_angle-=0.5