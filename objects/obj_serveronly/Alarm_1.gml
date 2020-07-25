/// @description enemy spawning
// You can write your code in this editor


with(obj_enemy_spawner)
{
	
	var inst = instance_create_layer(x,y,"instances",obj_useless)
	
	
	var buffer = buffer_create(12, buffer_fixed, 1);
	
	buffer_write(buffer, buffer_u8, DATA.CREATE_ENEMY);
	buffer_write(buffer, buffer_u16, inst.ID);
	buffer_write(buffer, buffer_u16, inst.x);
	buffer_write(buffer, buffer_u16, inst.y);
	buffer_write(buffer, buffer_u16, inst.object_index);
	

	
	clients = oController.clients
	for (var i=0; i<ds_list_size(clients); i++) {
		var soc = clients[| i];
		
		if (soc < 0) continue;
		
		network_send_packet(soc, buffer, buffer_get_size(buffer));
		
	}
	
	buffer_delete(buffer);





	
}

alarm_set(1,oController.mob_spawn_factor*60);

if oController.mob_spawn_factor>0.5
oController.mob_spawn_factor-=0.001;
