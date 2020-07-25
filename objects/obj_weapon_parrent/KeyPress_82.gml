/// @description Insert description here
// You can write your code in this editor
if (!in_hands)exit;
if (!in_hands.is_local)exit;


var buffer = buffer_create(2, buffer_fixed, 1);

buffer_write(buffer, buffer_u8, DATA.WEAPON_RELOAD);
buffer_write(buffer, buffer_u8, in_hands.playerID);

client_send_buffer(buffer)




if sprite_exists(reload_anim)
sprite_index=reload_anim
if sequence_exists(reload_sequence)
layer_sequence_create("instances_2",x,y,reload_sequence)


tick=reload_time_sec*60;
if mag_size > oController.ammo
{
	reload_progress=reload_time_sec*60;
mag_ammo=oController.ammo
oController.ammo=0;
}
else
{
mag_ammo=mag_size;
oController.ammo-=mag_size;
reload_progress=reload_time_sec*60;
}