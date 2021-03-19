/// @description Insert description here
// You can write your code in this editor
if target != noone
{
	x+=  int64((target.x-x)/10)
	y+= int64( ( target.y-y)/10)
}

if shake > 0
{
	shake -=2;
	x+=irandom_range(-4,4)
	y+=irandom_range(-4,4)
}

