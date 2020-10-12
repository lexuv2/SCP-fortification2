/// @description Insert description here
// You can write your code in this editor
coll.x=x+xoff+24

if state==door_state.opening
{
	if (frame < open_time)
	frame++;
	else
	{
	state=door_state.open;
	alarm[0]=120;
	}
	
	
	var _channel = animcurve_get_channel(crv_door, 0);
	var _val = animcurve_channel_evaluate(_channel, frame/open_time);
	xoff=	_val;
}

if state==door_state.closing
{
	if (frame < open_time)
	frame++;
	else
	{
	state=door_state.closed;
	}
	
	
	var _channel = animcurve_get_channel(crv_door, 0);
	var _val = animcurve_channel_evaluate(_channel, (open_time-frame)/open_time);
	xoff=	_val;
}