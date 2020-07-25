function client_send_buffer(argument0) {
	buffer = argument0

	// Send position to server
	if (!oController.is_server) {
		network_send_packet(oController.server, buffer, buffer_get_size(buffer));
	}
	// Send position to clients
	else {
		// Loop through clients list
	server_plyer_forward(buffer);
	}




}
