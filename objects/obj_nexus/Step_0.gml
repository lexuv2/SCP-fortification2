/// @description Insert description here
// You can write your code in this editor

if (!oController.is_server)exit;

var buffer = buffer_create(2, buffer_fixed, 1);
buffer_write(buffer, buffer_u8, DATA.UPDATE_NEXUS);
buffer_write(buffer, buffer_u8, hp);

client_send_buffer(buffer)
buffer_delete(buffer);

if hp<=0
room_goto(room_exploded)