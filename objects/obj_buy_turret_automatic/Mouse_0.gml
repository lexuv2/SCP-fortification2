/// @description Insert description here
// You can write your code in this editor
if oController.money>=variable_name.cost
{
	oController.money-=variable_name.cost;
	var inst = instance_create_layer(0,0,"instances_3",obj_turret_pick)
	inst.turret=variable_name
}
