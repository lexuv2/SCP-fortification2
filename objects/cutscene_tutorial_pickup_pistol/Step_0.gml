/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("F")) 
{
	if (collision_circle(x,y,32,obj_player,false,false))
	{
		show_textbox_enque(sPlayer,"Great, now proced to the left door and shoot the target dummy")
		textbox_start()
	}
}