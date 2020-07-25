/// @description 
// Menu room

if room==Menulit
{
	visible=true
}
else
visible=false

if (room == Menulit) {
	
	imguigml_set_next_window_size(0,0);
	imguigml_set_next_window_pos(-300,-300)
	
	imguigml_begin("PD3", 1); 
	
	var ret_ip = imguigml_input_text("Server IP:",server_ip,30)
	server_ip = ret_ip[1]
	
	var ret_port = imguigml_input_text("Server Port:",string(server_port),30)
	server_port = ret_port[1];
	ret = imguigml_input_text("Player Name",inp_player_name,30)
	inp_player_name = ret[1]
	var button_create_server = imguigml_button("Create Server")
	var button_connect = imguigml_button("Connect To Server")
	ret = imguigml_input_float("Mob Spawn Factor",mob_spawn_factor)
	mob_spawn_factor = ret[1]
	ret = imguigml_input_int("Start Money",start_money)
	start_money = ret[1]
	ret = imguigml_input_int("Start HP",start_hp)
	start_hp = ret[1]
	ret = imguigml_input_float("Money Income Factor",money_income_factor)
	money_income_factor = ret[1]
	ret = imguigml_input_float("Enemy HP Factor",enemy_hp_factor)
	enemy_hp_factor = ret[1]
	ret = imguigml_input_float("Mob Speed Factor",mob_speed_factor)
	mob_speed_factor = ret[1]
	
	/*roundtime="";
player_spawn_time=30; // sekundy
mob_spawn_factor=1;
start_money=100;
start_hp=3;
money_income_factor=1;
enemy_hp_factor=1;
game_description="";
mob_speed_factor=1;
game_tick=0;*/
	
	
	
	// Host
	if (button_create_server) {
		server = network_create_server(network_socket_tcp, server_port, 10);

	
		// Failed
		if (server < 0) {
			show_error("Could not create server.", false);
		}
		// Created
		else {
			room_goto_next();
			instance_create_layer(0,0,"instances",obj_serveronly)
			
			is_server = true;
		}

		
		
	}
	// Join
	if (button_connect) {
		server = network_create_socket(network_socket_tcp);
		var res = network_connect(server, server_ip, server_port);

		
	
		// Failed
		if (res < 0) {
			show_error("Could not connect to server.", false);
		}
		// Connected
		else {
			room_goto_next();
		}
	}
}
/*
if (room == rmGame)
{
	imguigml_set_next_window_size(180,150);
	imguigml_set_next_window_pos(0,0)
	
	var _wind = imguigml_begin("Game Deatils", 0); 
	
	imguigml_text("Player Spawn Time:" +string(player_spawn_time))
	imguigml_text("Mob Spawn Factor:" +string(mob_spawn_factor))
	imguigml_text("Money Income Factor:" +string(money_income_factor))
	imguigml_text("Enemy HP Factor:" +string(enemy_hp_factor))
	imguigml_text("Enemy Speed Facotr:" +string(mob_speed_factor))
	imguigml_text(string(roundtime))
	imguigml_text(string(fps_real))
	
	
	
	imguigml_set_next_window_size(180,80);
	
	
	if !_wind[0]
	imguigml_set_next_window_pos(0,20)
	else
	imguigml_set_next_window_pos(0,150)
	
	imguigml_begin("Player Deatils", 1); 
	
	imguigml_text("HP:" +string(oPlayer.hp))
	imguigml_text("Talent coins:" +string(money))
	

	
	
}