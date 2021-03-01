/// @description Insert description here
// You can write your code in this editor
		server = network_create_socket(network_socket_tcp);
		var res = network_connect(server,"25.139.92.14",2137);
		oController.server=server

		
	
		// Failed
		if (res < 0) {
			show_error("Could not connect to server.", false);
		}
		// Connected
		else {
			room_goto(room_tutorial)
		}