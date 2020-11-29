/// @description open_door

// You can write your code in this editor


	frame=0;
	state=door_state.opening
	if sequence_exists(seq)
	layer_sequence_destroy(seq)
	if autoclose
	alarm[0]=120;