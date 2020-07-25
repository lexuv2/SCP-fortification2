/// @description send game data
// You can write your code in this editor
	var buffer = buffer_create(30, buffer_fixed, 1);
	
	buffer_write(buffer, buffer_u8, DATA.GAME_SETTINGS_UPDATE);
	buffer_write(buffer, buffer_u16, oController.player_spawn_time);
	buffer_write(buffer, buffer_u16, oController.start_money);
	buffer_write(buffer, buffer_u16, oController.start_hp);
	buffer_write(buffer, buffer_f16, oController.money_income_factor);
	buffer_write(buffer, buffer_f16, oController.enemy_hp_factor);
	buffer_write(buffer, buffer_f16, oController.mob_speed_factor);
	buffer_write(buffer, buffer_f16, oController.mob_speed_factor);
	buffer_write(buffer, buffer_string, oController.roundtime);
	
	
	clients = oController.clients
	for (var i=0; i<ds_list_size(clients); i++) {
		var soc = clients[| i];
		
		if (soc < 0) continue;
		
		network_send_packet(soc, buffer, buffer_get_size(buffer));
	}
	
	buffer_delete(buffer);
	oController.roundtime=roundtime
	alarm_set(0,60)
	
	
	
	/*
	roundtime="";
player_spawn_time=30; // sekundy
mob_spawn_factor=1;
start_money=100;
start_hp=3;
money_income_factor=1;
enemy_hp_factor=1;
game_description="";
mob_speed_factor=1;