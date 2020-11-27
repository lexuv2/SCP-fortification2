/// @description Insert description here
// You can write your code in this editor


if (in_hands)
{
	if (!in_hands.is_local)exit;
	
		var buffer = buffer_create(4, buffer_fixed, 1);
		buffer_write(buffer, buffer_u8, DATA.WEAPON_DROP);
		buffer_write(buffer, buffer_u8,  in_hands.playerID);
		
		client_send_buffer(buffer)
	
	
	in_hands.weapon=-1;
	in_hands=-1;
}