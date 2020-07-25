/// @description 
// Game room
if (room == rmGame) {
	// Create player
	var plr = instance_create_layer(700,4846,"Instances_2", oPlayer);
	plr.playerID = 0;
	plr.player_name = inp_player_name	

	money =start_money;
	
	// Add server to clients list
	if (is_server) {
		ds_list_add(clients, -1);
	}
}