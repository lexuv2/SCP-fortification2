/// @description Insert description here
// You can write your code in this editor
var n = ds_list_size(cards)

for (var i=0;i<n;i++)
{
	var inst = cards[|i];
	if inst.state!=card_state.going_back and inst.state!=card_state.hold 
	{
	inst.x=scr_get_screen_x() +start+(i*spacing);
	inst.f_depth=i;
	
	}
		inst.spotx=scr_get_screen_x() +start+(i*spacing);
}