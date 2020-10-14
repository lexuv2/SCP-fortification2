/// @description Insert description here
// You can write your code in this editor
if point_distance(x,y,obj_player.x,obj_player.y)>150 exit

var inst = instance_create_layer(x,y,"Instances_2",obj_card_parent)
ds_list_add(obj_card_inventory.cards,inst);
inst.security_level = security_level;
inst.security_name=security_name;
inst.state=card_state.going_back
instance_destroy(id)