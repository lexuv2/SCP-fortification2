/// @description Insert description here
// You can write your code in this editor

if is_local
{

var buffer = buffer_create(100, buffer_grow, 2);
buffer_write(buffer, buffer_u8, DATA.PLAYER_SET_NAME);
buffer_write(buffer, buffer_u8, playerID);
buffer_write(buffer, buffer_string, player_name);

client_send_buffer(buffer)
buffer_delete(buffer);


alarm_set(0,120);
}