/// @description Insert description here
// You can write your code in this editor
if !is_local exit

var buffer = buffer_create(4, buffer_fixed, 1);
buffer_write(buffer, buffer_u8, DATA.TOGGLE_FLASHLIGHT);
buffer_write(buffer, buffer_u8, playerID);
client_send_buffer(buffer)
buffer_delete(buffer);


event_user(0) // toggle flashlight
