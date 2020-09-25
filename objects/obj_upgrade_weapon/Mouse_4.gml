/// @description Insert description here
// You can write your code in this editor
if visible
{
	if obj_player.weapon
	if (oController.money>=obj_player.weapon.next_cost)
	{
		var to_create=obj_player.weapon.next_wepon
		var cost = obj_player.weapon.next_cost
		oController.money-=cost
		instance_destroy(obj_player.weapon);
		var inst = instance_create_layer(x,y,"instances_3",to_create)
		inst.in_hands = obj_player.id;
		obj_player.weapon=inst.id;
		
		
	}

}
