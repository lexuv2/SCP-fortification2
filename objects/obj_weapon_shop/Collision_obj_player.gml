/// @description Insert description here
// You can write your code in this editor
if (other.is_local) 
{	
	draw_tooltip=1;
	if (keyboard_check_pressed(ord("F")))
	{
		if (oController.money>=item.cost) and !other.weapon
		{
		var inst = instance_create_layer(x,y+20,"instances_2",item)
		oController.money-=item.cost;
		
		other.weapon=inst;
		inst.in_hands=other.id;
		
		
		
		var buffer = buffer_create(5, buffer_fixed, 1);
		buffer_write(buffer, buffer_u8, DATA.WEAPON_BOUND);
		buffer_write(buffer, buffer_u8, other.playerID);
		buffer_write(buffer , buffer_u16 ,  item)
		
		client_send_buffer(buffer)

		
		
		}
	}
}