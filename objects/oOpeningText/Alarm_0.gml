/// @description drawing characters

chars_drawn++; // for every character drawn
if(chars_drawn!=len)	{ // if it's not reached the strings limit
	alarm[0] = alarmspeed; 
	audio_play_sound(choose(sndClick1, sndClick2), 1, false); // plays sound for every character drawn
}
