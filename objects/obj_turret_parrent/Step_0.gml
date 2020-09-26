/// @description Insert description here
// You can write your code in this editor

light.sl_light_angle = barrel_dir


image_speed=0;

if ! instance_exists(obj_enemy_parrent) exit
var  aim = instance_nearest(x,y,obj_enemy_parrent)
if point_distance(x,y,aim.x,aim.y)>range exit
if (collision_line(x,y,aim.x,aim.y,obj_collsision,true,true)==true) exit

if (shoot_delay<=0)
{
	var dir = point_direction(x,y,aim.x,aim.y);
	
	//lights
	var inst=instance_create_layer(x+lengthdir_x(60,dir),y+ lengthdir_y(60,dir),"Lights",obj_light_parrent)
	inst.sl_light_color=c_yellow
	inst.sl_light_texture = spr_light01
	inst.sl_light_xscale = 0.5;
	inst.sl_light_yscale = 0.5;
	inst.alarm[2]=2;
	with(inst)
	{
	SL_light_cast_obj( obj_turret_parrent, spr_shadow_mask_turret );
	}
	
	
	
	bullet_inst = instance_create_layer(x,y,"instances",projectile)
	instance_create_layer(x,y,"instances",obj_casing)
	audio_play_sound(shoot_sound,0,false)
	//shakeIntensity+=recoil*2
	shoot_delay=shoot_speed
	
	
	
	bullet_inst.direction=dir
	bullet_inst.image_angle=point_direction(x,y,aim.x,aim.y);
	bullet_inst.speed=bullet_speed;
	bullet_inst.damage=damage
	image_speed=60;

}
else
{
	shoot_delay--;
}




var inst = instance_nearest(x,y,obj_enemy_parrent)
barrel_dir = point_direction(x,y,inst.x,inst.y)




 mirror = 1;

	if (barrel_dir>90 and barrel_dir<270)
	{
		mirror=-1;
		image_xscale=-1;
	}
	else
	{
		image_xscale=1;
		mirror=1;
	}