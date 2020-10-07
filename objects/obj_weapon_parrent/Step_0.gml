/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_pause))exit;
if sequence
{

	layer_sequence_x(sequence,in_hands.x);
	layer_sequence_y(sequence,in_hands.y);
	var _struct = layer_sequence_get_instance(sequence)
	
	
	
	
	for (var i =0;i<array_length(_struct.activeTracks);i++)
	{
		_struct.activeTracks[i].rotation=image_angle;
		_struct.rotation=90;
	if (image_angle>90 and image_angle<270)
	{

		_struct.activeTracks[i].scaley=-1;
	}
	else
	{
		_struct.activeTracks[i].scaley=1;
	}
		



		
	}
	if layer_sequence_is_finished(sequence)
	{
	layer_sequence_destroy(sequence)
	sequence=noone;
	}
}


if tick>0
tick--;

if reload_progress>0
reload_progress--;

if (in_hands)
{
	x=in_hands.x-offset;
	y=in_hands.y;
	image_angle=point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
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
	
	if (image_angle<180)layer=layer_get_id("instances_2")
	else layer=layer_get_id("instances_3")
	

}

if sprite_index==shooting_anim and image_index=sprite_get_number(shooting_anim)-1
{
	sprite_index=holding_anim
}

if sprite_index==reload_anim and image_index=sprite_get_number(reload_anim)-1
{
	sprite_index=holding_anim
}

