/// @description Insert description here
// You can write your code in this editor

spoty=scr_get_screen_y()+scr_get_view_height()-30;
if state==card_state.hold{
		x=mouse_x-64;
	y=mouse_y-64;
	exit;
}


if state==card_state.going_back
{
	direction=point_direction(x,y,spotx,spoty);
	speed=going_back_time + point_distance(x,y,spotx,spoty)/6;
	going_back_time+=0.2;
	
	if point_distance(x,y,spotx,spoty) < 3
	{
		state=card_state.folded
		x=spotx;
		y=spoty;
		yoff=0;
		frame=0;
		speed=0
		direction=0;
	}
	exit;
}


var col = collision_point(mouse_x,mouse_y,obj_card_parent,true,true)
if instance_exists(col)
var fd = col.f_depth
else
var fd = 2137;

if (mouse_on) and (fd>f_depth) 
{
	if (state==card_state.folded)
	{
	state=card_state.unfolding;
	frame=0;
	
	}
}
else
{
	if (state==card_state.unfolded)
	{
	state=card_state.folding;
	frame=0;
	}
}
	
if state==card_state.folded
yoff=0

y=scr_get_screen_y()+scr_get_view_height()-30-yoff;
spoty=y+yoff;



if state==card_state.unfolding
{
	if (frame < unfold_time)
	frame++;
	else
	{
	state=card_state.unfolded;
	}
	
	
	var _channel = animcurve_get_channel(crv_card, 0);
	var _val = animcurve_channel_evaluate(_channel, frame/unfold_time);
	yoff=	_val;
}

if state==card_state.folding
{
	if (frame < unfold_time)
	frame++;
	else
	{
	state=card_state.folded;
	}
	
	
	var _channel = animcurve_get_channel(crv_card, 0);
	var _val = animcurve_channel_evaluate(_channel, (unfold_time-frame)/unfold_time);
	yoff=	_val;
}