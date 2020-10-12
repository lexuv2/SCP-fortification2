/// @description Insert description here
// You can write your code in this editor
var n = ds_list_size(cards)

for (var i=0;i<n;i++)
{
	var inst = cards[|i];
	inst.x=scr_get_screen_x() +start+(i*spacing);
	inst.f_depth=i;
}