/// @description 
var type = async_load[? "type"];
//var ID = async_load[? "id"];

// Connected
if (type == network_type_connect) {
	var socket = async_load[? "socket"];
	
	// Send player info
	var buffer = buffer_create(2, buffer_fixed, 1);
		
	buffer_write(buffer, buffer_u8, DATA.INIT_DATA);
	buffer_write(buffer, buffer_u8, ds_list_size(clients));
	
		
	network_send_packet(socket, buffer, buffer_get_size(buffer));
	buffer_delete(buffer);
	// send enemies 
	
	with(obj_enemy_parrent)
	{
		
	var buffer = buffer_create(12, buffer_fixed, 1);
	
	buffer_write(buffer, buffer_u8, DATA.CREATE_ENEMY);
	buffer_write(buffer, buffer_u16, ID);
	buffer_write(buffer, buffer_u16, x);
	buffer_write(buffer, buffer_u16, y);
	buffer_write(buffer, buffer_u16, object_index);
	network_send_packet(socket, buffer, buffer_get_size(buffer));
	buffer_delete(buffer);
	
	
	}
	

	
	// Create player instance
	var plr = instance_create_layer(2500,800, "Instances", obj_player);
	plr.playerID = ds_list_size(clients);
	plr.is_local = false;
	
	
	// Let other clients know
	var buffer = buffer_create(2, buffer_fixed, 1);
	
	buffer_write(buffer, buffer_u8, DATA.PLAYER_JOINED);
	buffer_write(buffer, buffer_u8, plr.playerID);
	
	
	for (var i=0; i<ds_list_size(clients); i++) {
		var soc = clients[| i];
		
		if (soc < 0) continue;
		
		network_send_packet(soc, buffer, buffer_get_size(buffer));
	}
	
	buffer_delete(buffer);
	
	with(obj_player)
	{

		if (weapon) 
		{
		var buffer = buffer_create(5, buffer_fixed, 1);
		buffer_write(buffer, buffer_u8, DATA.WEAPON_BOUND);
		buffer_write(buffer, buffer_u8, playerID);
		buffer_write(buffer , buffer_u16 ,  weapon.object_index)
		network_send_packet(socket, buffer, buffer_get_size(buffer));

		buffer_delete(buffer);
		}
	}
	
	
		
	// Add to list
	ds_list_add(clients, socket);
}
// Data
else if (type == network_type_data) {
	var buffer = async_load[? "buffer"];
	
	buffer_seek(buffer, buffer_seek_start, 0);
	
	var data = buffer_read(buffer, buffer_u8);
	
	// INIT_DATA
	if (data == DATA.INIT_DATA) {
		var count = buffer_read(buffer, buffer_u8);
		
		instance_create_layer(2500,800,"Instances_2",obj_player)
		// Set your player's ID/
		obj_player.playerID = count;
		
		// Create other players
		for (var i=0; i < count; i++) {
			var plr = instance_create_layer(2500,800, "Instances", obj_player);
			plr.playerID = i;
			plr.is_local = false;
		}
	}
	//update game settings
	/*	buffer_write(buffer, buffer_u8, DATA.GAME_SETTINGS_UPDATE);
	buffer_write(buffer, buffer_u8, player_spawn_time);
	buffer_write(buffer, buffer_u8, start_money);
	buffer_write(buffer, buffer_u8, start_hp);
	buffer_write(buffer, buffer_u8, money_income_factor);
	buffer_write(buffer, buffer_u8, enemy_hp_factor);
	buffer_write(buffer, buffer_u8, mob_speed_factor);
	*/
	else if (data == DATA.GAME_SETTINGS_UPDATE) {
		if (!is_server)
		{
		player_spawn_time = buffer_read(buffer,buffer_u16);
		start_money = buffer_read(buffer,buffer_u16);
		start_hp = buffer_read(buffer,buffer_u16);
		money_income_factor = buffer_read(buffer,buffer_f16);
		enemy_hp_factor = buffer_read(buffer,buffer_f16);
		mob_speed_factor = buffer_read(buffer,buffer_f16);
		mob_spawn_factor = buffer_read(buffer,buffer_f16);
		roundtime = buffer_read(buffer,buffer_string);
		
		if !is_game_initalized
		money = start_money
		
		
		is_game_initalized=true;
		
		// As server, forward position to other clients
		server_forward(buffer);
		}
	}
	//Nexus update
		else if (data == DATA.UPDATE_NEXUS) {
		obj_nexus.hp=buffer_read(buffer,buffer_u8)
		
		// As server, forward position to other clients
		server_forward(buffer);
	}
	
	// PLAYER_UPDATE
	else if (data == DATA.PLAYER_UPDATE_POS) {
		var pID = buffer_read(buffer, buffer_u8);
		
		with (obj_player) {
			if (pID == playerID)  {
				
				if (!is_local)
				{
					
				x = buffer_read(buffer, buffer_s16);
				y = buffer_read(buffer, buffer_s16);
				}
			}
		}
		
		// As server, forward position to other clients
		server_forward(buffer);
	}
	
		// PLAYER_UPDATE_HP
	else if (data == DATA.PLAYER_UPDATE_HP) {
		var pID = buffer_read(buffer, buffer_u8);
		
		with (obj_player) {
			if (pID == playerID) {
				hp = buffer_read(buffer, buffer_f16);
				maxhp = buffer_read(buffer, buffer_f16);
			}
		}
		
		// As server, forward position to other clients
		server_forward(buffer);
	}
	//UPDATE ROT
	else if (data == DATA.PLAYER_UPDATE_ROT) {
		var pID = buffer_read(buffer, buffer_u8);
		
		with (obj_player) {
			if (pID == playerID) {
				if (!is_local)
				{
				
				player_rot = buffer_read(buffer, buffer_s16);
				}
			}
		}
		
		// As server, forward position to other clients
		server_forward(buffer);
	}
	
	//UPDATE PLAYER NAME
	else if (data == DATA.PLAYER_SET_NAME) {
				var pID = buffer_read(buffer, buffer_u8);
		
		with (obj_player) {
			if (pID == playerID) {
				player_name = buffer_read(buffer, buffer_string);
				

			}
		}
		// As server, forward position to other clients
		server_forward(buffer);
		buffer_delete(buffer)
	}
	
		else if (data == DATA.ENEMY_SYNC_POS) {
				var pID = buffer_read(buffer, buffer_u16);
		
		with (obj_enemy_parrent) {
			if (pID == ID) {
				x= buffer_read(buffer,buffer_u16)
				y= buffer_read(buffer,buffer_u16)
				

			}
		}
		// As server, forward position to other clients
		server_forward(buffer);
		buffer_delete(buffer)
	}
	

	//DESTOROY ENEMY
	else if (data == DATA.KILL_ENEMY) {
				var pID = buffer_read(buffer, buffer_u8);
		
		with (obj_enemy_parrent) {
			if (pID == ID) {
				instance_destroy(id)
				

			}
		}
		// As server, forward position to other clients
		server_forward(buffer);
	}
	
	
		//UPDATE SHOOT
	else if (data == DATA.PLAYER_SHOOT) {
		
		var pID = buffer_read(buffer, buffer_u8);
		
		
		var bullet_x = buffer_read(buffer,buffer_s16);
		var bullet_y = buffer_read(buffer,buffer_s16);
		var bullet_dir = buffer_read(buffer,buffer_s16);
		var bullet_speed = buffer_read(buffer,buffer_s16)
		var _bullet_object = buffer_read(buffer,buffer_s16)
		var bullet_inst = instance_create_layer(bullet_x,bullet_y,"instances",_bullet_object);
		bullet_inst.direction=bullet_dir;
		bullet_inst.image_angle=bullet_dir;
		bullet_inst.speed=bullet_speed;
		
		with(obj_player)
		{
			if (pID == playerID) {
				with(weapon)
				{
					if !in_hands.is_local
					event_user(1)
				}
			}
		}
		
		// As server, forward position to other clients
		server_forward(buffer);
	}
	else if (data == DATA.CREATE_ENEMY)
	{
		
		var _id = buffer_read(buffer,buffer_u16);
		var _x = buffer_read(buffer,buffer_u16);
		var _y = buffer_read(buffer,buffer_u16);
		var _obj_index = buffer_read(buffer,buffer_u16);
		//show_message_async(_x)
		var _inst = instance_create_layer(_x,_y,"Instances",_obj_index)
		_inst.ID = _id
		log("deeeeeeejna")
		
	}
	// PLAYER_JOINED
	else if (data == DATA.PLAYER_JOINED) {
		show_debug_message("PLAYER JOINED")
		var inst = instance_create_layer(0, 0, "Instances", obj_player);
		
		inst.playerID = buffer_read(buffer, buffer_u8);
		inst.is_local = false;
	}
	else if (data == DATA.TOGGLE_FLASHLIGHT)
	{
		
		var pID = buffer_read(buffer,buffer_u8)

		with(obj_player)
		{
				if (pID == playerID) {
					if !is_local
				event_user(0)
			}
		}
		server_forward(buffer);
	}
	else if (data == DATA.WEAPON_BOUND)
	{
		
		var pID = buffer_read(buffer,buffer_u8)
		var inst_create = buffer_read(buffer,buffer_u16)
		var _inst = instance_create_layer(200,200,"instances_2", inst_create)
		var _x = buffer_read(buffer,buffer_u16)
		var _y = buffer_read(buffer,buffer_u16)
		
		
		var coll = collision_rectangle(_x-1,_y-1,_x+1,_y+1,inst_create,false,true) 
		if coll
		{
		instance_destroy(coll)
		log("delet")
		log("papai ")
		}
		
		
		with(obj_player)
		{
				if (pID == playerID) {
				weapon=_inst;
				_inst.in_hands=id;
				
				
				

			}
		}
		server_forward(buffer);
	}
	else if (data == DATA.WEAPON_RELOAD)
	{
		
		var pID = buffer_read(buffer,buffer_u8)

		with(obj_player)
		{
				if (pID == playerID) {
				weapon.sprite_index=weapon.reload_anim

			}
		}
		server_forward(buffer);
	}
	else if (data == DATA.WEAPON_DROP)
	{
		
		var pID = buffer_read(buffer,buffer_u8)
		with(obj_player)
		{
				if (pID == playerID) {
				weapon.in_hands=-1;
				weapon=-1;
				
				

			}
		}
		server_forward(buffer);
	}
}