/// @description Insert description here
// You can write your code in this editor
if ((room = target_room) )
{
	if (load)
	{
	var playerdata = json_decode(map[?"player"]);
	var xx = playerdata[?"x"];
	var yy = playerdata[?"y"];
	var stam = playerdata[?"stamina"]
    var _weapon = playerdata[?"weapon"]
	var inst = instance_create_layer(xx,yy,"instances_2",obj_player)
	
	inst.x = xx;
	inst.y = yy;
	inst.stamina = stam;
	if (object_exists(_weapon))
	{
		var _winst = instance_create_layer(0,0,"layer_weapons",_weapon);
		_winst.in_hands = inst.id;
		inst.weapon = _winst.id;
	}
	
	inst.playerID=0;
	inst.player_name = "P";
	
	
	
	}
	else
	{
		instance_create_layer(obj_player_spawn.x,obj_player_spawn.y,"Instances_2",obj_player)
	}
instance_destroy(id);
}
