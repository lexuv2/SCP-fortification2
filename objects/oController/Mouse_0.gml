/// @description Insert description here
// You can write your code in this editor
if room==Menulit
{
				//room_goto_next();
			instance_create_layer(0,0,"instances",obj_serveronly)
			var _inst = instance_create_layer(0,0,"instances",obj_game_loader)
			_inst.target_room=room_tutorial
			is_server = true;
}


