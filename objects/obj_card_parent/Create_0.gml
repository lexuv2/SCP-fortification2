/// @description Insert description here
// You can write your code in this editor
enum card_state{
 folded,
 unfolded,
 folding,
 unfolding,
 going_back,
 hold,
}

global.any_card_in_hand=false;

going_back_time=0;

spotx=0;
spoty=0;
state = card_state.folded
frame =0;
unfold_time =20;
yoff=0;

moffx=0;
moffy=0;

f_depth =0;
mouse_on = false;

outline_init()