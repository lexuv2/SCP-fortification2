/// @description visual efects
// You can write your code in this editor
if sprite_exists(shooting_anim)
sprite_index=shooting_anim

var casing = instance_create_layer(x,y,"layer_weapons",obj_casing)
casing.direction=(image_angle)+(110 *image_yscale)
if sequence
{
	layer_sequence_destroy(sequence)
	sequence=noone;
}


if sequence_exists(shooting_sequence)
{
	sequence  = layer_sequence_create("layer_weapons",x,y,shooting_sequence)
}



audio_channel_num(1000);
//audio_play_sound(shoot_sound,0,false)

n =0 
sum =0
for (var i=0;i<360;i+=6)
{
	
	var lista = collision_line_point(x,y,  x+ ldx(5000,i) , y+ldy(5000,i) , obj_collsision , false,false)
	if (lista[0]!=noone)
	{
		n++
		sum+=point_distance(x,y,lista[1],lista[2])
		//draw_set_alpha(1)
		//draw_set_color(c_red)
		//depth=-2137
		//audio_play_sound_at(_40_smith_wesson_8x_gunshot_mike_koenig,lista[1],lista[2],0,500,1000,1,false,1)
	}
}
audio_emitter_pitch(audio_emitter,  clamp( 0.7+ (sum/n)/2000 , 0.8 , 1.2))
//log(clamp( 0.7+ (sum/n)/2000 , 0.8 , 1.2))
audio_play_sound_on(audio_emitter,_40_smith_wesson_8x_gunshot_mike_koenig,0,0)
scr_shake_camera(recoil)

//audio_play_sound_at(_40_smith_wesson_8x_gunshot_mike_koenig,lista[|0].x,lista[|0].y,0,250,500,1,false,1)
//ex_camera_shake("main",recoil/2000,recoil/2000,0,5,1,0,0)

//shake cae4ra

rec_anim=true

var dir = in_hands.player_rot
var len = in_hands.sprite_height/2+5
var inst=instance_create_layer(x+lengthdir_x(len,dir),y+lengthdir_y(len,dir),"Lights",obj_light_muzzle_flash)

