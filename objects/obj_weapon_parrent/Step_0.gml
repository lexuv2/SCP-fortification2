/// @description Insert description here
// You can write your code in this editor
if tick>0
tick--;

if reload_progress>0
reload_progress--;

if (in_hands)
{
	x=in_hands.x-offset;
	y=in_hands.y;
	image_angle=point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)
	if (image_angle>90 and image_angle<270)
	{
		image_xscale=1;
		image_yscale=-1;
	}
	else
	{
		image_xscale=1;
		image_yscale=1;
	}

	if rec_anim
	{
	offset+=1;
	x=in_hands.x;
	}
	

}

if sprite_index==shooting_anim and image_index=sprite_get_number(shooting_anim)-1
{
	sprite_index=holding_anim
}

if sprite_index==reload_anim and image_index=sprite_get_number(reload_anim)-1
{
	sprite_index=holding_anim
}

