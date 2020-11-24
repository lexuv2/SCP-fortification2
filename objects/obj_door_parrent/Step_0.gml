/// @description Insert description here
// You can write your code in this editor
var _coll = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_card_parent, false, false)

if (_coll) and point_distance(x,y,obj_player.x,obj_player.y) <actvation_distance {
        var of = 20;
        if _coll.state == card_state.going_back {
            if state = door_state.closed {

                seq = layer_sequence_create("instances_3", x , y , seq_card_accepted)
                state = door_state.reading_card
                alarm_set(1, 180)
            }
            else if state = door_state.open {
                state = door_state.closing
                frame = 0;

            }
        }


    }




coll.x=x+xoff
shd1.x=x+xoff
shd2.x=x+xoff
if state=door_state.reading_card exit;
if state==door_state.opening
{
	if (frame < open_time)
	frame++;
	else
	{
	state=door_state.open;

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