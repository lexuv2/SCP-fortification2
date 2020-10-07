/// @description Insert description here
// You can write your code in this editor

if tick>0 and in_hands.is_local
exit

if mag_ammo<=0 and in_hands.is_local
{
event_perform(ev_keypress, ord("R"));

exit
}




tick=shooting_speed





spread =  point_direction(x,y,mouse_x,mouse_y);
spread -= (pellets/2) * pellets_spread;

for (var i =0;i<pellets; i++)
{
	var buffer = buffer_create(12, buffer_fixed, 1);
	
	var bullet_dir =spread;
	var bullet_x = lengthdir_x(64,bullet_dir)+x
	var bullet_y = lengthdir_y(64,bullet_dir)+y
	
	
	
	buffer_write(buffer, buffer_u8, DATA.PLAYER_SHOOT);
	buffer_write(buffer, buffer_u8, in_hands.playerID);
	buffer_write(buffer, buffer_s16, bullet_x);
	buffer_write(buffer, buffer_s16, bullet_y);
	buffer_write(buffer, buffer_s16, bullet_dir);
	buffer_write(buffer, buffer_s16, bullet_speed); // bullet speed
	buffer_write(buffer, buffer_s16, projectile); 
	
	client_send_buffer(buffer)
	
	// Delete buffer
	buffer_delete(buffer);
	if (oController.is_server)
	{
	
	var bullet_inst = instance_create_layer(bullet_x,bullet_y,"instances",projectile);
	bullet_inst.direction=bullet_dir;
	bullet_inst.image_angle=bullet_dir;
	bullet_inst.speed=bullet_speed;
	bullet_inst.damage=damage
	
	
	}
	spread += pellets_spread;

}


var mouse_pos_x = window_mouse_get_x()
var mouse_pos_y = window_mouse_get_y()

var _mouse_dir = point_direction(x,y,mouse_x,mouse_y)


var _lendir_x = lengthdir_x(recoil,_mouse_dir+90)
var _lendir_y = lengthdir_y(recoil,_mouse_dir+90)

window_mouse_set(mouse_pos_x+_lendir_x,mouse_pos_y+_lendir_y)

if !(fulll_auto)
semi_can_shoot=false;

mag_ammo--;

event_user(1)