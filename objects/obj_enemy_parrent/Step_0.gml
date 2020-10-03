/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_pause))
{
	speed=0;	
	exit;
	
}

//image_angle=point_direction(x,y,goto_nearst_obj.x,goto_nearst_obj.y)

if goto_nearst_obj==obj_173_destrior
image_index=1

if hitbox
{
mp_grid_clear_rectangle(global.grid,xprevious-sprite_width/2,yprevious-sprite_height/2,xprevious+sprite_width/2,yprevious+sprite_height/2)

mp_grid_add_rectangle(global.grid,x-sprite_width/3,y-sprite_height/3,x+sprite_width/3,y+sprite_height/3)
}

if hp<=0
instance_destroy(id)



if (burning)
{
	burning--;
	part_emitter_region(global.part_system,emmiter,x-sprite_width/2,x+sprite_width/2,y-sprite_height/2,y+sprite_height/2,0,0);
	part_emitter_burst(global.part_system,emmiter,global.part_fire,1);
}

if (burning)
if (burning mod 30 == 0)

{
	audio_play_sound(snd_hitmarker,0,0)
	white_effect = true
	hp-=2;
}

if !use_path exit

var nextPathPointX = path_get_point_x(path, move_speed);
var nextPathPointY = path_get_point_y(path, move_speed);



direction = point_direction(x,y,nextPathPointX,nextPathPointY)
