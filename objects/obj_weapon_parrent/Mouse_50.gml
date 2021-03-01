/// @description Insert description here

// You can write your code in this editor

if global.mouse_hover exit;
if(instance_exists(obj_pause))exit;
if in_hands
{
	if (!in_hands.is_local)exit;
	
	if semi_can_shoot==false exit;
	event_user(0);
	
}