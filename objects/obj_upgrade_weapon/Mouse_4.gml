/// @description Insert description here
// You can write your code in this editor
if visible
{
	if oPlayer.weapon
	if (oController.money>=oPlayer.weapon.next_cost)
	{
		var to_create=oPlayer.weapon.next_wepon
		var cost = oPlayer.weapon.next_cost
		oController.money-=cost
		instance_destroy(oPlayer.weapon);
		var inst = instance_create_layer(x,y,"instances_3",to_create)
		inst.in_hands = oPlayer.id;
		oPlayer.weapon=inst.id;
		
		
	}

}
