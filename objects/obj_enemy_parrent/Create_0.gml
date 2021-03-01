/// @description Insert description here
// You can write your code in this editor
alarm[4]=60
alarm[5]=65
image_speed=0
if shooting
alarm_set(3,60)
slowed = false
ID = -1;

speed=move_speed;
if teleports
speed=0;



if (oController.is_server)
{
obj_serveronly.hi_id+=1;

ID = obj_serveronly.hi_id;
}
alarm_set(0,1)

emmiter=part_emitter_create(global.part_system)
path = path_add()
burning=0;

white_effect = false;


if !use_path exit
alarm_set(1,5)
last_move_to_x=0
last_move_to_y=0
if !instance_exists(goto_nearst_obj)exit

var near_inst = instance_nearest(x,y,goto_nearst_obj)
var movetox = near_inst.x;
var movetoy = near_inst.y;

 last_move_to_x = movetox;
 last_move_to_y = movetoy;

if (mp_grid_path(global.grid,path,x,y,movetox,movetoy,true))
{
	path_start(path,move_speed,path_action_stop,false)
}

