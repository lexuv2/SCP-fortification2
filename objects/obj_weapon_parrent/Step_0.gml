/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_pause)) exit;

audio_emitter_position(audio_emitter,x,y,0)
if sequence {

    layer_sequence_x(sequence, in_hands.x);
    layer_sequence_y(sequence, in_hands.y);
    var _struct = layer_sequence_get_instance(sequence)



    layer_sequence_angle(sequence, image_angle);
    if (image_angle > 90 and image_angle < 270) {

        layer_sequence_yscale(sequence, -1);
    } else {
        layer_sequence_yscale(sequence, 1);
    }

    if layer_sequence_is_finished(sequence) {
        layer_sequence_destroy(sequence)
        sequence = noone;
    }
}


if tick > 0
tick--;

if reload_progress > 0
reload_progress--;

if (in_hands) {
    x = in_hands.x - offset;
    y = in_hands.y;
	
    image_angle = in_hands.player_rot
    if (image_angle > 90 and image_angle < 270) {
        image_xscale = 1;
        image_yscale = -1;
    } else {
        image_xscale = 1;
        image_yscale = 1;
    }

    if rec_anim {
        offset += 1;
        x = in_hands.x;
    }	
	
	
if in_hands.is_local
{
	
    if (image_angle < 180) layer_depth("layer_weapons" ,layer_get_depth("Instances_2")+1)
    else layer_depth("layer_weapons" ,layer_get_depth("Instances_2")-1)
}

}

if sprite_index == shooting_anim and image_index = sprite_get_number(shooting_anim) - 1 {
    sprite_index = holding_anim
}

if sprite_index == reload_anim and image_index = sprite_get_number(reload_anim) - 1 {
    sprite_index = holding_anim
}