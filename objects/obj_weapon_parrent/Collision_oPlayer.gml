/// @description Insert description here
// You can write your code in this editor

//if (other.is_local) and (!in_hands)
//{

//}

if (other.is_local) and (keyboard_check_pressed(ord("F"))) and (!in_hands)
{
	
	

		if other.weapon exit


		var buffer = buffer_create(5, buffer_fixed, 1);
		buffer_write(buffer, buffer_u8, DATA.WEAPON_BOUND);
		buffer_write(buffer, buffer_u8, other.playerID);
		buffer_write(buffer , buffer_u16 ,  object_index)
		
		client_send_buffer(buffer)


	in_hands = other.id
	other.weapon = id;
}