/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor




if (mouse_on) 
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

y=scr_get_screen_y()+scr_get_view_height()+100-yoff;
x=scr_get_screen_x()+scr_get_view_width()-xoff;



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