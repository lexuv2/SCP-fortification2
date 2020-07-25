function server_plyer_forward(argument0) {
		buffer =argument0;
		for (var i=0; i<ds_list_size(oController.clients); i++) {
			// Get socket
			var soc = oController.clients[| i];
		
			// Skip if server itself
			if (soc < 0) continue;
		
			// Send
			network_send_packet(soc, buffer, buffer_get_size(buffer));
		}


}
