/// @description Insert description here
// You can write your code in this editor
//if mouse_on //and (state==card_state.unfolded or state==card_state.unfolding)
//{

//}
var col = collision_point(mouse_x,mouse_y,obj_card_parent,true,true)
if instance_exists(col)
var fd = col.f_depth
else
var fd = 2137;

if (mouse_on) and (fd>f_depth) 
	state=card_state.hold
