/// @description sync_pos
// You can write your code in this editor
if oController.is_server
{
alarm_set(0,irandom_range(120,200))
var buffer = buffer_create(10, buffer_fixed, 1);

buffer_write(buffer, buffer_u8, DATA.ENEMY_SYNC_POS);
buffer_write(buffer, buffer_u16, ID);
buffer_write(buffer, buffer_u16, x);
buffer_write(buffer, buffer_u16, y);
client_send_buffer(buffer)
buffer_delete(buffer)
}