/// @description Insert description here
// You can write your code in this editor
oController.money+=money_gain;

var _inst = instance_create_layer(x,y,"instances_2",obj_money_indicator)
_inst.value=money_gain

var buffer = buffer_create(4, buffer_fixed, 1);

buffer_write(buffer, buffer_u8, DATA.KILL_ENEMY);
buffer_write(buffer, buffer_u16, ID);
client_send_buffer(buffer)
buffer_delete(buffer)

mp_grid_clear_rectangle(global.grid,xprevious-sprite_width/2,yprevious-sprite_height/2,xprevious+sprite_width/2,yprevious+sprite_height/2)

mp_grid_clear_rectangle(global.grid,x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2)