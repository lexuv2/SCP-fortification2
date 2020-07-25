function server_forward(argument0) {
	if (is_server) {
		buffer = argument0
				for (var i=0; i<ds_list_size(clients); i++) {
					var soc = clients[| i];
				
					// Make sure socket is not the one that sent the position
					if (soc < 0 || soc == async_load[? "buffer"]) continue;
				
					network_send_packet(soc, buffer, buffer_get_size(buffer));
				}
			}


}
