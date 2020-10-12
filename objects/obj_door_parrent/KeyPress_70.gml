/// @description Insert description here
// You can write your code in this editor
var of = 20;
if collision_rectangle(x-of,y-of,x+sprite_width+of,y+sprite_height+of,obj_player,true,false)
{
if  state=door_state.closed
{
	state=door_state.opening
	frame=0;
}
else if state=door_state.open
{
		state=door_state.closing
		frame=0;
		
}
}