/// @description update path
// You can write your code in this editor


alarm_set(1,irandom_range(update_path_interval-10,update_path_interval+10));

mp_grid_clear_rectangle(global.grid,xprevious-sprite_width/2,yprevious-sprite_height/2,xprevious+sprite_width/2,yprevious+sprite_height/2)

mp_grid_clear_rectangle(global.grid,x-sprite_width,y-sprite_height,x+sprite_width,y+sprite_height)

var near_inst = instance_nearest(x,y,goto_nearst_obj)



var movetox = near_inst.x;
var movetoy = near_inst.y;



if (check_if_player_moved)
if ((movetox== last_move_to_x) and   (movetoy == last_move_to_y))
exit


	 last_move_to_x = movetox;
	last_move_to_y = movetoy;


	path_end()
	if path_exists(path)
	path_delete(path)
	
	path=path_add()
	mp_grid_path(global.grid,path,x,y,movetox,movetoy,true)
	
	
	var nextPathPointX = path_get_point_x(path, clamp(move_speed,0,path_get_number(path)));
	var nextPathPointY = path_get_point_y(path, clamp(move_speed,0,path_get_number(path)));
	
	if teleports and (nextPathPointX!=0 and nextPathPointY!=0 )
{
	x=nextPathPointX
	y=nextPathPointY
	if (instance_exists(obj_light_torch))
	{
	obj_light_torch.sl_light_power=-1000;
	
	}	
	with(obj_light_parrent){
		sl_light_power=0;
	}
}
	

 


