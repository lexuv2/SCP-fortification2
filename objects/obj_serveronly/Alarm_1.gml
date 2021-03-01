/// @description enemy spawning
// You can write your code in this editor


with(obj_enemy_spawner)
{
	
	var inst = instance_create_layer(x,y,"instances",obj_enemy_parrent)
	
	
	var buffer = buffer_create(12, buffer_fixed, 1);
	
	buffer_write(buffer, buffer_u8, DATA.CREATE_ENEMY);
	buffer_write(buffer, buffer_u16, inst.ID);
	buffer_write(buffer, buffer_u16, inst.x);
	buffer_write(buffer, buffer_u16, inst.y);
	buffer_write(buffer, buffer_u16, inst.object_index);
	

	
	client_send_buffer(buffer)
	
	buffer_delete(buffer);





	
}

alarm_set(1,oController.mob_spawn_factor*60);

if oController.mob_spawn_factor>0.5
oController.mob_spawn_factor-=0.001;
