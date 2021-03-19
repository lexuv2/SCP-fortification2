/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if !instance_exists(inst) exit;

inst.x=x
inst.y=y

if (inst.sl_light_power<=0.01)
{
	instance_destroy(inst);
	
}

if(speed>0)
{
	speed/=1.1
	image_angle+=speed	
}
else
{
	//inst.sl_light_refresh=1
	inst.sl_light_refreshrate=30;
	//inst.sl_light_xscale-=0.001;
	//inst.sl_light_yscale-=0.001;
	
}

var _dir = direction
if collision_line(x,y,x+lengthdir_x(speed,_dir),y+lengthdir_y(speed,_dir),obj_collsision,false,false)
speed=0