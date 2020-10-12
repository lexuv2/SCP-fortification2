/// @description 
// Game room
if (room == rmGame) {
	instance_create_depth(0,0,-1000,obj_loading_anim)
	
	// Create player
	var plr = instance_create_layer(700,4846,"Instances_2", obj_player);
	plr.playerID = 0;
	plr.player_name = inp_player_name	

	money =start_money;
	
	// Add server to clients list
	if (is_server) {
		ds_list_add(clients, -1);
	}
}